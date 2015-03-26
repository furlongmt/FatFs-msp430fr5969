NANOSOURCES =$(wildcard */*_n.c)
ALLSOURCES = $(wildcard */*.c) $(wildcard *.c)
SOURCES = $(filter-out $(NANOSOURCES), $(ALLSOURCES))
OBJECTS = $(patsubst %.c, %.obj, $(SOURCES))


CCS_DIR =/opt/ccsv6/ccsv6 
CCS_BIN_DIR =$(join $(CCS_DIR), /tools/compiler/msp430_4.3.3/bin)
CCS_INC_DIR =$(join $(CCS_DIR), /tools/compiler/msp430_4.3.3/include)
CCS_BASE_DIR =$(join $(CCS_DIR), /ccs_base/msp430/include)
FATFS= FatFS

SUPPORT_FILE_DIRECTORY =/opt/ti-mspgcc/include
export PATH := $(CCS_BIN_DIR):$(PATH)

CC      = msp430-elf-gcc
ifeq ($(CC),cl430)
#Can add code for ccs
else
    #GCC DEFINES
	MSP430_CORE = msp430x
	DEVICE  = msp430fr5969
	GDB     = msp430-elf-gdb   
	CFLAGS = -std=gnu99 -I$(SUPPORT_FILE_DIRECTORY) -I$(FATFS) \
		 -mmcu=$(DEVICE) -fdata-sections -ffunction-sections
	LFLAGS = -Wl,--gc-sections -L $(SUPPORT_FILE_DIRECTORY) -Xlinker -Map=test.map
	LIBS = -L libc.a -T gcc_lnk_msp430fr5969.cmd
endif

all: compile

%.obj: %.c $(DEPS)
ifeq ($(CC),cl430)
	$(CC) $(CFLAGS) $< -o
else
	$(CC) $(CFLAGS) -c $< -o $@
endif

drivers: $(DRIVEROBJECTS)
	echo $(DRIVEROBJECTS) 

# Change -o to $(DEVICE) when we need multiple devices
compile: $(OBJECTS) $(DRIVEROBJECTS)
ifeq ($(CC),cl430)
	$(CC) $(CFLAGS) $(LFLAGS) -o msp430fr5969.out *.obj $(LIBS) 
else
	$(CC) $(CFLAGS) $(OBJECTS) $(DRIVEROBJECTS) $(LFLAGS) -o SD-FR5969.out $(LIBS) 
endif

clean:
	rm -f *.obj *~ *.out
	rm -f FatFS/*.obj
	rm -f *.map
