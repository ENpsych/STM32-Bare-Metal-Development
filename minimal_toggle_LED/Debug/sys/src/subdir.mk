################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sys/src/system_stm32f3xx.c 

S_UPPER_SRCS += \
../sys/src/startup_stm32f303xe.S 

OBJS += \
./sys/src/startup_stm32f303xe.o \
./sys/src/system_stm32f3xx.o 

S_UPPER_DEPS += \
./sys/src/startup_stm32f303xe.d 

C_DEPS += \
./sys/src/system_stm32f3xx.d 


# Each subdirectory must supply rules for building sources it contributes
sys/src/%.o: ../sys/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -x assembler-with-cpp -DDEBUG -DSTM32F303xE -I"/home/ankit/eclipse-workspace/minimal_toggle_LED/inc" -I"/home/ankit/eclipse-workspace/minimal_toggle_LED/sys/inc" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sys/src/%.o: ../sys/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DSTM32F303xE -I"/home/ankit/eclipse-workspace/minimal_toggle_LED/inc" -I"/home/ankit/eclipse-workspace/minimal_toggle_LED/sys/inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


