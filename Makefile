#QEMU TEST : make run

TOPDIR 			= $(shell pwd)

include 		$(TOPDIR)/Config.mk

SUBDIRS			+= bootload
SUBDIRS			+= kernel
SUBDIRS			+= image

BKOS: compile $(BKOBJ)

#Make Option
run: 
	gnome-terminal --hide-menubar -e "qemu-system-arm -M smdkc210 -display none -serial stdio -kernel image/BKOS.bin -s -S" &

#Subdir compile
compile:
	@for dir in $(SUBDIRS); do \
	make -C $$dir || exit $?; \
	done

#clean file
clean:
	@for dir in $(SUBDIRS); do \
	make -C $$dir clean; \
	done
	rm -f *.o
	rm -f BKOS 
	rm -f BKOS.bin
	rm -f kernel.bin
	rm -f *.das
	rm -f *.map

