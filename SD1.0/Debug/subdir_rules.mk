################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
main_SD.obj: ../main_SD.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3/bin/cl430" -vmspx --abi=eabi --data_model=restricted -O2 --opt_for_speed=0 --include_path="/opt/ccsv6/ccsv6/ccs_base/msp430/include" --include_path="/opt/ccsv6/ccsv6/tools/compiler/msp430_4.3.3/include" --advice:power="8" --advice:hw_config=all -g --define=__MSP430FR5969__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 --printf_support=minimal --preproc_with_compile --preproc_dependency="main_SD.pp" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


