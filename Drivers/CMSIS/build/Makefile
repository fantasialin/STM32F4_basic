
L_CFGPATH = ../../../config
include $(L_CFGPATH)/STM32_make.cfg

LIB = libSTM32F4xxCMSIS.a

CFLAGS += -I../../STM32F4xx_HAL_Driver/Inc -I../../CMSIS/Include -I../../CMSIS/Device/ST/STM32F4xx/Include -I../../../config

SRCS = \
#../Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c      \
#../Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s



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
