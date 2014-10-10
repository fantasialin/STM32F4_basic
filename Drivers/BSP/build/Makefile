
L_CFGPATH = ../../../config
include $(L_CFGPATH)/STM32_make.cfg

LIB = libSTM32F4-Discovery.a

CFLAGS += -I../../STM32F4xx_HAL_Driver/Inc -I../STM32F4-Discovery -I../../CMSIS/Include -I../../CMSIS/Device/ST/STM32F4xx/Include -I../../../config

SRCS = \
../STM32F4-Discovery/stm32f4_discovery.c      \
#../STM32F4-Discovery/stm32f4_discovery_accelerometer.c   \
#../STM32F4-Discovery/stm32f4_discovery_audio.c


OBJS = $(SRCS:.c=.o)

all: $(LIB)
	cp $(LIB) ../../../library

$(LIB): $(OBJS)
	$(AR) -r $(LIB) $(OBJS)
	$(RANLIB) $(LIB)

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	-rm -f $(OBJS)
	-rm -f $(LIB)
	-rm -f ../../../library/$(LIB)

.PHONY: all clean
