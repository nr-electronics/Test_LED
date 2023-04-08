################################################################################
# MRS Version: {"version":"1.8.4","date":"2023/02/015"}
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/board.c \
../User/ch32v10x_it.c \
../User/main.c \
../User/system_ch32v10x.c 

OBJS += \
./User/board.o \
./User/ch32v10x_it.o \
./User/main.o \
./User/system_ch32v10x.o 

C_DEPS += \
./User/board.d \
./User/ch32v10x_it.d \
./User/main.d \
./User/system_ch32v10x.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\Test_LED\Debug" -I"C:\MRS_DATA\workspace\Test_LED\Core" -I"C:\MRS_DATA\workspace\Test_LED\User" -I"C:\MRS_DATA\workspace\Test_LED\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

