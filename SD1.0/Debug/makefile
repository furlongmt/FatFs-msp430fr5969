################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./main_SD.obj" \
"./FatFS/HAL_SDCard.obj" \
"./FatFS/diskio.obj" \
"./FatFS/ff.obj" \
"../lnk_msp430fr5969.cmd" \
-l"libc.a" \
-l"libmath.a" \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include FatFS/subdir_vars.mk
-include subdir_rules.mk
-include FatFS/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
SD1.0.out \

EXE_OUTPUTS__QUOTED += \
"SD1.0.out" \

BIN_OUTPUTS += \
SD1.0.hex \

BIN_OUTPUTS__QUOTED += \
"SD1.0.hex" \


# All Target
all: SD1.0.out

# Tool invocations
SD1.0.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: MSP430 Linker'
	"/opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3/bin/cl430" -vmspx --abi=eabi --data_model=restricted -O2 --opt_for_speed=0 --advice:power="8" --advice:hw_config=all -g --define=__MSP430FR5969__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 --printf_support=minimal -z -m"SD1.0.map" --heap_size=160 --stack_size=160 --use_hw_mpy=F5 --cinit_hold_wdt=on -i"/opt/ccsv6/ccsv6/ccs_base/msp430/include" -i"/opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3/lib" -i"/opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3/include" -i"/opt/ccsv6/ccsv6/ccs_base/msp430/lib/5xx_6xx_FRxx" -i"/opt/ccsv6/ccsv6/ccs_base/msp430/lib/FR59xx" --reread_libs --priority --warn_sections --display_error_number --diag_wrap=off --xml_link_info="SD1.0_linkInfo.xml" --rom_model -o "SD1.0.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

SD1.0.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: MSP430 Hex Utility'
	"/opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3/bin/hex430" --memwidth=8 --romwidth=8 -o "SD1.0.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)$(BIN_OUTPUTS__QUOTED)
	-$(RM) "main_SD.pp" "FatFS/HAL_SDCard.pp" "FatFS/diskio.pp" "FatFS/ff.pp" 
	-$(RM) "main_SD.obj" "FatFS/HAL_SDCard.obj" "FatFS/diskio.obj" "FatFS/ff.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

