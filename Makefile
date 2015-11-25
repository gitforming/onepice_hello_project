obj-m :=hello.o
#                     //目标文件  
#module-objs := file1.o file.o
 #      //当模块有多个文件组成时，添加本句  
KDIR :=/usr/src/linux-headers-3.19.0-31-generic
#               //内核路径，根据实际情况换成自己的内核路径，嵌入式的换成嵌入式，PC机的指定PC机路径  
PWD := $(shell pwd)
#                 //模块源文件路径  
all:
	$(MAKE)  -C  $(KDIR)  SUBDIRS=$(PWD)  modules
	@rm -rf *.mod.*
	@rm -rf .*.cmd
	@rm -rf *.o
	@rm -rf Module.*
clean:
	rm -rf *.ko
