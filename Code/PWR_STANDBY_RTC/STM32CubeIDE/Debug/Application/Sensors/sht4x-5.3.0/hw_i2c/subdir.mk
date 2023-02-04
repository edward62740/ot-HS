################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Sensors/sht4x-5.3.0/hw_i2c/sensirion_hw_i2c_implementation.c 

OBJS += \
./Application/Sensors/sht4x-5.3.0/hw_i2c/sensirion_hw_i2c_implementation.o 

C_DEPS += \
./Application/Sensors/sht4x-5.3.0/hw_i2c/sensirion_hw_i2c_implementation.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Sensors/sht4x-5.3.0/hw_i2c/%.o Application/Sensors/sht4x-5.3.0/hw_i2c/%.su: ../Application/Sensors/sht4x-5.3.0/hw_i2c/%.c Application/Sensors/sht4x-5.3.0/hw_i2c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32WB55xx -c -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0-2f-hw_i2c

clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0-2f-hw_i2c:
	-$(RM) ./Application/Sensors/sht4x-5.3.0/hw_i2c/sensirion_hw_i2c_implementation.d ./Application/Sensors/sht4x-5.3.0/hw_i2c/sensirion_hw_i2c_implementation.o ./Application/Sensors/sht4x-5.3.0/hw_i2c/sensirion_hw_i2c_implementation.su

.PHONY: clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0-2f-hw_i2c

