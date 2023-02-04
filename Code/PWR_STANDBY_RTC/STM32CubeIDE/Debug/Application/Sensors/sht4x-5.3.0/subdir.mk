################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Sensors/sht4x-5.3.0/sensirion_common.c \
../Application/Sensors/sht4x-5.3.0/sht4x.c \
../Application/Sensors/sht4x-5.3.0/sht4x_example_usage.c \
../Application/Sensors/sht4x-5.3.0/sht_git_version.c 

OBJS += \
./Application/Sensors/sht4x-5.3.0/sensirion_common.o \
./Application/Sensors/sht4x-5.3.0/sht4x.o \
./Application/Sensors/sht4x-5.3.0/sht4x_example_usage.o \
./Application/Sensors/sht4x-5.3.0/sht_git_version.o 

C_DEPS += \
./Application/Sensors/sht4x-5.3.0/sensirion_common.d \
./Application/Sensors/sht4x-5.3.0/sht4x.d \
./Application/Sensors/sht4x-5.3.0/sht4x_example_usage.d \
./Application/Sensors/sht4x-5.3.0/sht_git_version.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Sensors/sht4x-5.3.0/%.o Application/Sensors/sht4x-5.3.0/%.su: ../Application/Sensors/sht4x-5.3.0/%.c Application/Sensors/sht4x-5.3.0/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32WB55xx -c -I../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../Inc -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0

clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0:
	-$(RM) ./Application/Sensors/sht4x-5.3.0/sensirion_common.d ./Application/Sensors/sht4x-5.3.0/sensirion_common.o ./Application/Sensors/sht4x-5.3.0/sensirion_common.su ./Application/Sensors/sht4x-5.3.0/sht4x.d ./Application/Sensors/sht4x-5.3.0/sht4x.o ./Application/Sensors/sht4x-5.3.0/sht4x.su ./Application/Sensors/sht4x-5.3.0/sht4x_example_usage.d ./Application/Sensors/sht4x-5.3.0/sht4x_example_usage.o ./Application/Sensors/sht4x-5.3.0/sht4x_example_usage.su ./Application/Sensors/sht4x-5.3.0/sht_git_version.d ./Application/Sensors/sht4x-5.3.0/sht_git_version.o ./Application/Sensors/sht4x-5.3.0/sht_git_version.su

.PHONY: clean-Application-2f-Sensors-2f-sht4x-2d-5-2e-3-2e-0

