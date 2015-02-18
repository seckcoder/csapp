
all:firecracker dynamite nitroglycerin

firecracker:firecracker.s
	gcc -m32 -c firecracker.s
	objdump -d firecracker.o > firecracker.d

dynamite:dynamite.s
	gcc -m32 -c dynamite.s
	objdump -d dynamite.o > dynamite.d

nitroglycerin:nitroglycerin.s
	gcc -m32 -c nitroglycerin.s
	objdump -d nitroglycerin.o > nitroglycerin.d

clean:
	rm firecracker.s firecracker.o firecracker.d
