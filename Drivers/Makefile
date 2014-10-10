all: HAL_build BSP_build

BSP_build:
	$(MAKE) -C BSP/build
    
HAL_build: 
	$(MAKE) -C STM32F4xx_HAL_Driver/build

clean:
	$(MAKE) -C STM32F4xx_HAL_Driver/build clean
	$(MAKE) -C BSP/build clean