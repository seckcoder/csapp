all:main main.s

main.s:main.c
	gcc -m32 -g -S main.c
main: main.c
	gcc -m32 -g main.c -o main

clean:
	rm main.s main
