ifndef TOPDIR
TOPDIR := ..
endif

include $(TOPDIR)/Config.mk

TARGET      := bootload.o
BFLAGS		:= -I../include -march=armv7-a -mcpu=cortex-a9 -c -v


$(TARGET):bootload.S 
	$(CC) bootload.S $(BFLAGS) -DOS_RAM_BASE=0x40100000
	mv $(TARGET) $(TOPDIR)/image 

clean:
	@for dir in $(SUBDIRS); do \
	make -C $$dir clean; \
	done
	rm -rf *.o *.i *.s *.bin Kernel *.map $(TARGET)
