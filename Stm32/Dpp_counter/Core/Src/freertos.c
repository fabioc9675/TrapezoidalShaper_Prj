/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "usart.h"
#include "adc.h"
#include "comp.h"
#include <stdio.h>
#include "arm_math.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define BUFFER_SIZE 16384
#define BUFFER_PRINT 8192
#define PREEMPT_SIZE 1024

#define FIR_TAP_NUM 31

#define K_TRAPZ  29
#define L_TRAPZ  50
#define M_TRAPZ  20

#define DPP_DEEP 2048

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
uint8_t Rx_Data[10];
uint8_t fl_receive = 0;
uint8_t fl_dpp = 0;
uint8_t fl_counter = 0;
uint8_t fl_trigger = 0;
char    Tx_Data[30];
char    Tx_DPP[10];
char    Tx_Count[10];

uint32_t medicion[BUFFER_SIZE]; // Primer buffer para almacenar los valores del ADC
uint32_t envio[BUFFER_SIZE]; // Segundo buffer para almacenar los valores del ADC
uint32_t *currentBuffer = medicion; // Apuntador al buffer actual
uint32_t *sendBuffer = NULL; // Apuntador al buffer que se enviará

uint32_t read_ptr = 0; // Puntero de lectura para FIFO circular
uint32_t write_ptr = 0; // Puntero de escritura para FIFO circular
uint8_t triggered = 0; // Flag para indicar si se ha activado el trigger
uint8_t capture_done = 0; // Flag para indicar si se ha completado la captura


int contador = 0;


// Parametros del FIR Filter
//const q31_t firCoeffs32[FIR_TAP_NUM] = {
//		0x0000, 0x0001, 0x0003, 0x0007, 0x000C, 0x0012,
//		0x001A, 0x0021, 0x0029, 0x0031, 0x0038, 0x003E,
//		0x0043, 0x0046, 0x0048, 0x0048, 0x0046, 0x0043,
//		0x003E, 0x0038, 0x0031, 0x0029, 0x0021, 0x001A,
//		0x0012, 0x000C, 0x0007, 0x0003, 0x0001, 0x0000, 0x0000};

const float32_t firCoeffs32[FIR_TAP_NUM] = {
0.0,
0.0007663088786586984,
0.003059471829289364,
0.006811378631115489,
0.011876947805368786,
0.018040490404885947,
0.025025961489500727,
0.03251058488990011,
0.04014114263135406,
0.047552064652254124,
0.054384346502548496,
0.06030426910489331,
0.06502089883314185,
0.06830140818243065,
0.06998337387462639,
0.06998337387462639,
0.06830140818243065,
0.06502089883314185,
0.0603042691048933,
0.054384346502548496,
0.04755206465225412,
0.04014114263135405,
0.0325105848899001,
0.02502596148950071,
0.018040490404885933,
0.011876947805368774,
0.00681137863111547,
0.003059471829289364,
0.0007663088786586984,
0.0};

// Variables para el filtro FIR
float32_t firStateF32[BUFFER_SIZE + FIR_TAP_NUM - 1];
arm_fir_instance_q31 S;
float32_t input[BUFFER_SIZE];
float32_t output[BUFFER_SIZE];

// Variables para el filtro Trapz
float32_t outpTrapz[BUFFER_PRINT];
float32_t trapzStateF32[BUFFER_PRINT];

// Variables para llenado del DPP
uint32_t dppBuffer[DPP_DEEP];

/* USER CODE END Variables */
osThreadId mainTaskHandle;
osThreadId samplingTaskHandle;
osThreadId SerialTaskHandle;

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
// Inicializacion del filtro FIR
void initFIR(void);

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void const * argument);
void StartSamplingTask(void const * argument);
void StartSerialTask(void const * argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* GetIdleTaskMemory prototype (linked to static allocation support) */
void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );

/* USER CODE BEGIN GET_IDLE_TASK_MEMORY */
static StaticTask_t xIdleTaskTCBBuffer;
static StackType_t xIdleStack[configMINIMAL_STACK_SIZE];

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize )
{
  *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
  *ppxIdleTaskStackBuffer = &xIdleStack[0];
  *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
  /* place for user code */
}
/* USER CODE END GET_IDLE_TASK_MEMORY */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of mainTask */
  osThreadDef(mainTask, StartDefaultTask, osPriorityNormal, 0, 256);
  mainTaskHandle = osThreadCreate(osThread(mainTask), NULL);

  /* definition and creation of samplingTask */
  osThreadDef(samplingTask, StartSamplingTask, osPriorityNormal, 0, 128);
  samplingTaskHandle = osThreadCreate(osThread(samplingTask), NULL);

  /* definition and creation of SerialTask */
  osThreadDef(SerialTask, StartSerialTask, osPriorityNormal, 0, 128);
  SerialTaskHandle = osThreadCreate(osThread(SerialTask), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the mainTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void const * argument)
{
  /* USER CODE BEGIN StartDefaultTask */
  /* Infinite loop */
  for(;;)
  {

    osDelay(1);
  }
  /* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Header_StartSamplingTask */
/**
* @brief Function implementing the samplingTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartSamplingTask */
void StartSamplingTask(void const * argument)
{
  /* USER CODE BEGIN StartSamplingTask */
	HAL_ADC_Start_DMA(&hadc1, currentBuffer, BUFFER_SIZE);
	HAL_COMP_Start_IT(&hcomp1);

	initFIR();
	//HAL_ADC_Start(&hadc1);
  /* Infinite loop */
  for(;;)
  {

	  if (capture_done == 1) {
		  capture_done = 0;


		  for (int i = 0; i < BUFFER_SIZE; i++){
			  if (*(sendBuffer+i) > 2000) {
				  write_ptr = (i + BUFFER_SIZE - PREEMPT_SIZE) % BUFFER_SIZE;
				  contador++;
				  break;
			  }
		  }

		  // Copiar los datos del buffer ADC al buffer de entrada
		  for (int i = 0; i < BUFFER_SIZE; i++) {
			input[i] = (float32_t)sendBuffer[i];

		  }

		  // Aplicar el filtro FIR
		  arm_fir_f32(&S, input, output, BUFFER_SIZE);


		  // Calculo del trapz shaper
		  for (int i = (K_TRAPZ + L_TRAPZ); i < BUFFER_PRINT; i++){
			  float32_t Acc = output[(write_ptr + i) % BUFFER_SIZE] -
							  output[((write_ptr + i - K_TRAPZ) % BUFFER_SIZE)] -
							  output[((write_ptr + i - L_TRAPZ) % BUFFER_SIZE)] +
							  output[((write_ptr + i - K_TRAPZ - L_TRAPZ) % BUFFER_SIZE)];
			  trapzStateF32[i] = trapzStateF32[i - 1] + Acc;
			  outpTrapz[i] = outpTrapz[i - 1] + trapzStateF32[i] + Acc * M_TRAPZ;
		  }


		  // Comparacion de tamaño para el DPP
		  for (int i = PREEMPT_SIZE; i < PREEMPT_SIZE + 300; i++){
			  int32_t diff = 1000;
			  if (outpTrapz[i] > 200000) {
				  diff = outpTrapz[i] - outpTrapz[i-1];
				  if (diff < 0) {
					  int dir = ((uint32_t)outpTrapz[i]>>13 & 0x7FF);
					  dppBuffer[dir]++;
					  break;
				  }
			  }

		  }


		  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, 1);
		  osDelay(20);
		  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, 0);
	  }
//	  osDelay(200);
//	  HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
//	  osDelay(300);


  }
  /* USER CODE END StartSamplingTask */
}

/* USER CODE BEGIN Header_StartSerialTask */
/**
* @brief Function implementing the SerialTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartSerialTask */
void StartSerialTask(void const * argument)
{
  /* USER CODE BEGIN StartSerialTask */
	//__HAL_UART_ENABLE_IT(&huart3, UART_IT_IDLE);   // enable idle line interrupt

	HAL_UART_Receive_IT(&huart3, Rx_Data, 1);
  /* Infinite loop */
  for(;;)
  {

	  if (fl_receive == 1){
		  fl_receive = 0;



		  //HAL_UART_Transmit_IT(&huart3, "HELLO FABIAN\n", 13);
		  for (int i = 0; i < BUFFER_PRINT ; i++){
			  sprintf(Tx_Data, "%lu,%lu,%lu\r\n", (uint32_t)outpTrapz[i],
					  	  	  	  	  	  	  (uint32_t)output[(write_ptr + i) % BUFFER_SIZE],
											  (uint32_t)input[(write_ptr + i) % BUFFER_SIZE]);
					                         // *(sendBuffer + ((write_ptr + i) % BUFFER_SIZE)));
			  // sprintf(Tx_Data, "%lu\r\n", *(sendBuffer + ((write_ptr + i) % BUFFER_SIZE)));
			  HAL_UART_Transmit(&huart3, Tx_Data, strlen(Tx_Data), HAL_MAX_DELAY);
		  }


	  }

	  if (fl_dpp == 1){
		  fl_dpp = 0;

		  //HAL_UART_Transmit_IT(&huart3, "HELLO FABIAN\n", 13);
		  for (int i = 0; i < DPP_DEEP ; i++){
			  sprintf(Tx_DPP, "%lu\r\n", dppBuffer[i]);
			  HAL_UART_Transmit(&huart3, Tx_DPP, strlen(Tx_DPP), HAL_MAX_DELAY);
		  }


	  }

	  if (fl_counter == 1){
		  fl_counter = 0;

		  //HAL_UART_Transmit_IT(&huart3, "HELLO FABIAN\n", 13);
		  sprintf(Tx_Count, "%lu\r\n", contador);
		  HAL_UART_Transmit(&huart3, Tx_Count, strlen(Tx_Count), HAL_MAX_DELAY);


	   }

    osDelay(1);
  }
  /* USER CODE END StartSerialTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

void initFIR(void) {
  // arm_fir_init_q31(&S, FIR_TAP_NUM, &firCoeffs32, &firStateF32, BUFFER_SIZE);
  arm_fir_init_f32(&S, FIR_TAP_NUM, firCoeffs32, firStateF32, BUFFER_SIZE);
}

/* ******************************************************************************** */
void HAL_COMP_TriggerCallback(COMP_HandleTypeDef *hcomp){
	fl_trigger = 1;


}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc){
	read_ptr = (read_ptr + 1) % BUFFER_SIZE;

	if (fl_trigger == 1){
		fl_trigger = 0;
		if (capture_done ==  0) {
				capture_done = 1;
			HAL_ADC_Stop_DMA(&hadc1);
			  // Alternar buffers
			  if (currentBuffer == medicion)
			  {
				  currentBuffer = envio;
				  sendBuffer = medicion;
			  }
			  else
			  {
				  currentBuffer = medicion;
				  sendBuffer = envio;
			  }

			  // Reiniciar el DMA con el nuevo buffer
			  HAL_ADC_Start_DMA(&hadc1, currentBuffer, BUFFER_SIZE);
			}
	}
}

void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){
	//HAL_GPIO_TogglePin (LD3_GPIO_Port, LD3_Pin);
	HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin);
	return;
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{

	HAL_UART_Receive_IT(&huart3, Rx_Data, 1);
	if (Rx_Data[0] == 'R'){
		HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
		fl_receive = 1;
	} else if (Rx_Data[0] == 'H'){
		HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin);
		fl_dpp = 1;
	} else if (Rx_Data[0] == 'J'){
		fl_counter = 1;
	}

	return;
}
/* USER CODE END Application */
