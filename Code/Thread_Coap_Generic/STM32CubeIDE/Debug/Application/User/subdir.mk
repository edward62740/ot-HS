################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/app_algo.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/app_entry.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/hw_timerserver.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/hw_uart.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/main.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm32_lpm_if.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm32wbxx_hal_msp.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm32wbxx_it.c \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm_logging.c 

OBJS += \
./Application/User/app_algo.o \
./Application/User/app_entry.o \
./Application/User/hw_timerserver.o \
./Application/User/hw_uart.o \
./Application/User/main.o \
./Application/User/stm32_lpm_if.o \
./Application/User/stm32wbxx_hal_msp.o \
./Application/User/stm32wbxx_it.o \
./Application/User/stm_logging.o 

C_DEPS += \
./Application/User/app_algo.d \
./Application/User/app_entry.d \
./Application/User/hw_timerserver.d \
./Application/User/hw_uart.d \
./Application/User/main.d \
./Application/User/stm32_lpm_if.d \
./Application/User/stm32wbxx_hal_msp.d \
./Application/User/stm32wbxx_it.d \
./Application/User/stm_logging.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/%.o Application/User/%.su: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/app_entry.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/app_entry.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/hw_timerserver.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/hw_timerserver.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/hw_uart.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/hw_uart.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32_lpm_if.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm32_lpm_if.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32wbxx_hal_msp.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm32wbxx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32wbxx_it.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm32wbxx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm_logging.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/Core/Src/stm_logging.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/app_algo.d ./Application/User/app_algo.o ./Application/User/app_algo.su ./Application/User/app_entry.d ./Application/User/app_entry.o ./Application/User/app_entry.su ./Application/User/hw_timerserver.d ./Application/User/hw_timerserver.o ./Application/User/hw_timerserver.su ./Application/User/hw_uart.d ./Application/User/hw_uart.o ./Application/User/hw_uart.su ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32_lpm_if.d ./Application/User/stm32_lpm_if.o ./Application/User/stm32_lpm_if.su ./Application/User/stm32wbxx_hal_msp.d ./Application/User/stm32wbxx_hal_msp.o ./Application/User/stm32wbxx_hal_msp.su ./Application/User/stm32wbxx_it.d ./Application/User/stm32wbxx_it.o ./Application/User/stm32wbxx_it.su ./Application/User/stm_logging.d ./Application/User/stm_logging.o ./Application/User/stm_logging.su

.PHONY: clean-Application-2f-User

