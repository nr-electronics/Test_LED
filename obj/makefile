################################################################################
# MRS Version: {"version":"1.8.4","date":"2023/02/015"}
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
Test_LED.hex \

SECONDARY_LIST += \
Test_LED.lst \

SECONDARY_SIZE += \
Test_LED.siz \


# All Target
all: Test_LED.elf secondary-outputs

# Tool invocations
Test_LED.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "C:\MRS_DATA\workspace\Test_LED\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"Test_LED.map" --specs=nano.specs --specs=nosys.specs -o "Test_LED.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
Test_LED.hex: Test_LED.elf
	@	riscv-none-embed-objcopy -O ihex "Test_LED.elf"  "Test_LED.hex"
	@	@
Test_LED.lst: Test_LED.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble "Test_LED.elf" > "Test_LED.lst"
	@	@
Test_LED.siz: Test_LED.elf
	@	riscv-none-embed-size --format=berkeley "Test_LED.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) Test_LED.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
