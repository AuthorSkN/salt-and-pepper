NVCC = /usr/local/cuda/bin/nvcc
CFLAGS = -g -G -O0

LNK = ./bmp/EasyBMP.h ./bmp/EasyBMP.cpp
salt_and_pepper: main.cu
	$(NVCC) $(CFLAGS) $< -o $@ EasyBMP.o

clear:
	rm output.bmp