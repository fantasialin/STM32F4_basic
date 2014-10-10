
all: basic_uart uart_polling sysTick

fakee:

basic_uart: fakee
	$(MAKE) -C basic_uart
    
uart_polling: fakee
	$(MAKE) -C uart_polling

sysTick: fakee
	$(MAKE) -C sysTick    
    
clean:
	$(MAKE) -C basic_uart clean
	$(MAKE) -C uart_polling clean
	$(MAKE) -C sysTick clean
    
    
.PHONY: all clean
