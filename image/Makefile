TOPDIR 				:= ..
BKOBJ           = bootload.o kernel.bin.o




BKOS: compile $(BKOBJ)
	arm-none-eabi-ld $(BKOBJ) -o BKOS -N -T BKOS.lds
	#-T option recate .lds file
	arm-none-eabi-objcopy BKOS BKOS.bin -O binary
#Subdir compile
compile:
	@for dir in $(SUBDIRS); do \
	make -C $$dir || exit $?; \
	done

clean:
	rm -f *.o
	rm -f BKOS
	rm -f BKOS.bin
