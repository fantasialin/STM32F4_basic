
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

all: $(BIN_IMAGE)

$(BIN_IMAGE): $(EXECUTABLE)
	$(OBJCOPY) -O binary $^ $@

$(EXECUTABLE): main.c stm32f4xx_hal_msp.c stm32f4xx_it.c ../../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c      \
../../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s
	$(CC) $(CFLAGS) $^ -o $@  $(LDFLAGS) $(STM32F4_LIBS)

clean:
	rm -rf $(EXECUTABLE)
	rm -rf $(BIN_IMAGE)

flash:
	st-flash write $(BIN_IMAGE) 0x8000000

.PHONY: all clean
