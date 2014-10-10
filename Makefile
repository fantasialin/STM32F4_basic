all: projects

Driver_build:
	$(MAKE) -C Drivers

projects:  Driver_build
	$(MAKE) -C projects

clean:
	$(MAKE) -C projects clean
	$(MAKE) -C Drivers clean
