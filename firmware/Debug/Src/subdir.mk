################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/adc.c \
../Src/anim_ball.c \
../Src/anim_life.c \
../Src/anim_name.c \
../Src/anim_random.c \
../Src/anim_swipe.c \
../Src/game_racer.c \
../Src/gpio.c \
../Src/ledHandler.c \
../Src/main.c \
../Src/screenBuffer.c \
../Src/stm32f0xx_hal_msp.c \
../Src/stm32f0xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32f0xx.c \
../Src/tim.c \
../Src/usart.c 

OBJS += \
./Src/adc.o \
./Src/anim_ball.o \
./Src/anim_life.o \
./Src/anim_name.o \
./Src/anim_random.o \
./Src/anim_swipe.o \
./Src/game_racer.o \
./Src/gpio.o \
./Src/ledHandler.o \
./Src/main.o \
./Src/screenBuffer.o \
./Src/stm32f0xx_hal_msp.o \
./Src/stm32f0xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32f0xx.o \
./Src/tim.o \
./Src/usart.o 

C_DEPS += \
./Src/adc.d \
./Src/anim_ball.d \
./Src/anim_life.d \
./Src/anim_name.d \
./Src/anim_random.d \
./Src/anim_swipe.d \
./Src/game_racer.d \
./Src/gpio.d \
./Src/ledHandler.d \
./Src/main.d \
./Src/screenBuffer.d \
./Src/stm32f0xx_hal_msp.d \
./Src/stm32f0xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32f0xx.d \
./Src/tim.d \
./Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/adc.cyclo ./Src/adc.d ./Src/adc.o ./Src/adc.su ./Src/anim_ball.cyclo ./Src/anim_ball.d ./Src/anim_ball.o ./Src/anim_ball.su ./Src/anim_life.cyclo ./Src/anim_life.d ./Src/anim_life.o ./Src/anim_life.su ./Src/anim_name.cyclo ./Src/anim_name.d ./Src/anim_name.o ./Src/anim_name.su ./Src/anim_random.cyclo ./Src/anim_random.d ./Src/anim_random.o ./Src/anim_random.su ./Src/anim_swipe.cyclo ./Src/anim_swipe.d ./Src/anim_swipe.o ./Src/anim_swipe.su ./Src/game_racer.cyclo ./Src/game_racer.d ./Src/game_racer.o ./Src/game_racer.su ./Src/gpio.cyclo ./Src/gpio.d ./Src/gpio.o ./Src/gpio.su ./Src/ledHandler.cyclo ./Src/ledHandler.d ./Src/ledHandler.o ./Src/ledHandler.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/screenBuffer.cyclo ./Src/screenBuffer.d ./Src/screenBuffer.o ./Src/screenBuffer.su ./Src/stm32f0xx_hal_msp.cyclo ./Src/stm32f0xx_hal_msp.d ./Src/stm32f0xx_hal_msp.o ./Src/stm32f0xx_hal_msp.su ./Src/stm32f0xx_it.cyclo ./Src/stm32f0xx_it.d ./Src/stm32f0xx_it.o ./Src/stm32f0xx_it.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su ./Src/system_stm32f0xx.cyclo ./Src/system_stm32f0xx.d ./Src/system_stm32f0xx.o ./Src/system_stm32f0xx.su ./Src/tim.cyclo ./Src/tim.d ./Src/tim.o ./Src/tim.su ./Src/usart.cyclo ./Src/usart.d ./Src/usart.o ./Src/usart.su

.PHONY: clean-Src

