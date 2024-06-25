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
#include <stdio.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
uint8_t Rx_Data[10];
uint8_t fl_receive = 0;
char    Tx_Data[10];

uint32_t medicion[1024];
int contador = 0;

/* USER CODE END Variables */
osThreadId mainTaskHandle;
osThreadId samplingTaskHandle;
osThreadId SerialTaskHandle;

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

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
	HAL_ADC_Start_DMA(&hadc1, &medicion, 1024);
	//HAL_ADC_Start(&hadc1);
  /* Infinite loop */
  for(;;)
  {
	  contador++;
    osDelay(200);

    HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
    osDelay(300);

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
		  for (int i = 0; i < 1024 ; i++){
			  sprintf(Tx_Data, "%lu\r\n", medicion[i]);
			  HAL_UART_Transmit(&huart3, Tx_Data, strlen(Tx_Data), HAL_MAX_DELAY);
		  }
	  }

    osDelay(1);
  }
  /* USER CODE END StartSerialTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){
	//HAL_GPIO_TogglePin (LD3_GPIO_Port, LD3_Pin);
	HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin);
	return;
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
	HAL_UART_Receive_IT(&huart3, Rx_Data, 1);
	fl_receive = 1;
	return;
}
/* USER CODE END Application */
