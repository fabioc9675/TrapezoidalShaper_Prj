La biblioteca `arm_math` es parte de CMSIS-DSP (Cortex Microcontroller Software Interface Standard - Digital Signal Processing). Para usarla en STM32CubeIDE, sigue estos pasos:

### Paso 1: Incluir CMSIS-DSP en tu Proyecto

ver video: [link](https://www.youtube.com/watch?v=jqCpaleqfls)

En el archivo IOC de STM en softwarepath se puede agregar el modulo DSP y queda disponible en los middlewares para poderse agregar,

Luego ir a project properties, en C/C++ General ->Path and Symbols -> SYmbols -> GNU, agregar el siguiente `ARM_MATH_CM7`. Esto para la arquitectura Cortex M7.

https://os.mbed.com/platforms/ST-Nucleo-H743ZI/

https://community.st.com/t5/stm32-mcus/configuring-dsp-libraries-on-stm32cubeide/ta-p/49637

https://github.com/STMicroelectronics/STM32CubeH7


## A partir de aqui es sugerencia de ChatGPT

1. **Descargar CMSIS-DSP**:

   - Si no lo tienes ya, descarga CMSIS de [ARM CMSIS GitHub](https://github.com/ARM-software/CMSIS_5).
2. **Añadir CMSIS-DSP a tu proyecto**:

   - Copia la carpeta `CMSIS/DSP/Include` y `CMSIS/DSP/Source` a tu proyecto en STM32CubeIDE.
3. **Configurar Paths de CMSIS-DSP en STM32CubeIDE**:

   - Abre tu proyecto en STM32CubeIDE.
   - Ve a `Project -> Properties -> C/C++ Build -> Settings`.
   - En `Tool Settings`, expande `MCU GCC Compiler` y selecciona `Includes`.
   - Añade la ruta a las carpetas `Include` de CMSIS-DSP (por ejemplo, `path/to/CMSIS/DSP/Include`).
   - En `MCU GCC Linker`, selecciona `Libraries`.
   - Añade la ruta a las carpetas `Source` de CMSIS-DSP.

### Paso 2: Incluir y Usar la Biblioteca `arm_math`

1. **Incluir el Header**:

   - En tu archivo fuente principal, incluye la cabecera `arm_math.h`:

   ```c
   #include "arm_math.h"
   ```
2. **Configurar y Usar el Filtro FIR**:

   - Usa las funciones de CMSIS-DSP como se muestra en el ejemplo anterior.

### Ejemplo Completo

Aquí tienes un ejemplo que muestra cómo configurar e implementar un filtro FIR en un STM32 usando CMSIS-DSP. Este ejemplo asume que ya has configurado tu proyecto para incluir CMSIS-DSP siguiendo los pasos anteriores.

#### Archivo principal (`main.c`):

```c
#include "main.h"
#include "arm_math.h"

#define FIR_TAP_NUM 32
#define BLOCK_SIZE 32

const float32_t firCoeffs32[FIR_TAP_NUM] = {
  0.0023, 0.0046, 0.0076, 0.0114, 0.0158, 0.0209, 0.0264, 0.0322, 
  0.0382, 0.0441, 0.0498, 0.0550, 0.0595, 0.0632, 0.0658, 0.0673,
  0.0673, 0.0658, 0.0632, 0.0595, 0.0550, 0.0498, 0.0441, 0.0382, 
  0.0322, 0.0264, 0.0209, 0.0158, 0.0114, 0.0076, 0.0046, 0.0023
};

float32_t firStateF32[BLOCK_SIZE + FIR_TAP_NUM - 1];
arm_fir_instance_f32 S;

float32_t input[BLOCK_SIZE];
float32_t output[BLOCK_SIZE];

void initFIR(void) {
  arm_fir_init_f32(&S, FIR_TAP_NUM, (float32_t *)&firCoeffs32[0], &firStateF32[0], BLOCK_SIZE);
}

void processFIR(void) {
  // Aquí deberías llenar 'input' con tus datos de entrada
  arm_fir_f32(&S, input, output, BLOCK_SIZE);
  // Aquí puedes usar 'output' para tus datos filtrados
}

int main(void)
{
  HAL_Init();
  SystemClock_Config();

  initFIR();

  while (1)
  {
    // Llama a processFIR periódicamente
    processFIR();
    HAL_Delay(100);
  }
}

void SystemClock_Config(void)
{
  // Configuración del reloj del sistema
  // Este código depende de tu configuración específica
}
```

### Paso 3: Compilar y Probar

1. **Compilar**:

   - Asegúrate de que todas las rutas de inclusión y archivos fuente están correctamente configurados en tu proyecto.
   - Compila tu proyecto en STM32CubeIDE.
2. **Probar**:

   - Carga el firmware en tu placa STM32.
   - Verifica que el filtro FIR funciona como se espera.

### Solución de Problemas

Si encuentras errores al compilar, asegúrate de:

- Las rutas de inclusión a CMSIS-DSP están correctamente configuradas.
- Todos los archivos fuente necesarios están incluidos en tu proyecto.
- La configuración de la herramienta de compilación es correcta para tu microcontrolador STM32 específico.

Si los problemas persisten, verifica la documentación de CMSIS-DSP y STM32CubeIDE para asegurarte de que no falta ninguna configuración.
