################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/sensirion_sw_i2c_implementation.c 

OBJS += \
./Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/sensirion_sw_i2c_implementation.o 

C_DEPS += \
./Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/sensirion_sw_i2c_implementation.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/%.o Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/%.su: ../Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/%.c Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32WB55xx -c -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0-2f-sw_i2c-2f-sample-2d-implementations-2f-Atmel_SAMD2_series

clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0-2f-sw_i2c-2f-sample-2d-implementations-2f-Atmel_SAMD2_series:
	-$(RM) ./Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/sensirion_sw_i2c_implementation.d ./Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/sensirion_sw_i2c_implementation.o ./Application/Sensors/sht4x-5.3.0/sw_i2c/sample-implementations/Atmel_SAMD2_series/sensirion_sw_i2c_implementation.su

.PHONY: clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0-2f-sw_i2c-2f-sample-2d-implementations-2f-Atmel_SAMD2_series

