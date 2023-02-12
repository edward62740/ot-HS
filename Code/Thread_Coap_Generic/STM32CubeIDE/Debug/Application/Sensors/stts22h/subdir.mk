################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Sensors/stts22h/stts22h_reg.c 

OBJS += \
./Application/Sensors/stts22h/stts22h_reg.o 

C_DEPS += \
./Application/Sensors/stts22h/stts22h_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Sensors/stts22h/%.o Application/Sensors/stts22h/%.su: ../Application/Sensors/stts22h/%.c Application/Sensors/stts22h/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I"C:/Users/Workstation/Documents/GitHub/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/User" -I"C:/Users/Workstation/Documents/GitHub/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/stts22h" -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Documents/GitHub/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Sensors-2f-stts22h

clean-Application-2f-Sensors-2f-stts22h:
	-$(RM) ./Application/Sensors/stts22h/stts22h_reg.d ./Application/Sensors/stts22h/stts22h_reg.o ./Application/Sensors/stts22h/stts22h_reg.su

.PHONY: clean-Application-2f-Sensors-2f-stts22h

