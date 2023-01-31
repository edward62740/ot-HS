################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32_WPAN/App/app_thread.c 

OBJS += \
./Application/User/STM32_WPAN/App/app_thread.o 

C_DEPS += \
./Application/User/STM32_WPAN/App/app_thread.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/STM32_WPAN/App/app_thread.o: C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32_WPAN/App/app_thread.c Application/User/STM32_WPAN/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_ftd.h>' -DTHREAD_WB -DSTM32WB55xx -c -I../../Core/Inc -I../../STM32_WPAN/App -I../../Middlewares/ST/STM32_WPAN -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread/platform -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include -I../../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../../Middlewares/ST/STM32_WPAN/utilities -I../../Utilities/LCD -I../../Utilities/lpm/tiny_lpm -I../../Utilities/sequencer -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/BSP/Components/Common -I../../Drivers/BSP/STM32WB5MM-DK -I"C:/Users/Workstation/Desktop/ot-HS/Code/Thread_Coap_Generic/STM32CubeIDE/Application/Sensors/sht4x-5.3.0" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-STM32_WPAN-2f-App

clean-Application-2f-User-2f-STM32_WPAN-2f-App:
	-$(RM) ./Application/User/STM32_WPAN/App/app_thread.d ./Application/User/STM32_WPAN/App/app_thread.o ./Application/User/STM32_WPAN/App/app_thread.su

.PHONY: clean-Application-2f-User-2f-STM32_WPAN-2f-App

