
L_CFGPATH = ../../config
include $(L_CFGPATH)/STM32_make.cfg

EXECUTABLE=STM32F4-Basic.elf
BIN_IMAGE=STM32F4-Basic.bin

CFLAGS+=-g

# to run from FLASH
CFLAGS+=-Wl,-T,stm32_flash.ld

CFLAGS+=-I./

# Drivers
CFLAGS+=-I../../Drivers/STM32F4xx_HAL_Driver/Inc
CFLAGS+=-I../../Drivers/CMSIS/Include
CFLAGS+=-I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include
CFLAGS+=-I../../Drivers/BSP/STM32F4-Discovery
CFLAGS+=-I../../config


LDFLAGS = -L../../library

STM32F4_LIBS = -lSTM32F4-Discovery -lSTM32F4xx_HAL_Driver

#Major programs
SRC +=./main.c \
      ../../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 
#======================================================================#
#STM32 startup file
STARTUP=../../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s

#======================================================================#
#Make rules

#Make all
all:$(BIN_IMAGE)

$(BIN_IMAGE):$(EXECUTABLE)
	$(OBJCOPY) -O binary $^ $@

$(EXECUTABLE):$(SRC) $(STARTUP)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS) $(STM32F4_LIBS)

#Make clean
clean:
	rm -rf $(EXECUTABLE)
	rm -rf $(BIN_IMAGE)
    
#Make flash
flash:
	st-flash write $(BIN_IMAGE) 0x8000000

#======================================================================
.PHONY:all clean flash
