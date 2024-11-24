###################################################
#
# file: Makefile
#
# @Author:   Ioannis Chatziantoniou
# @Version:  14-5-2024
# @email:    csd5193@csd.uoc.gr
#
# Makefile
#
####################################################

all: data3 data6 data9 

data3: createdata3.o
	gcc -Wall -ansi -pedantic createdata3.o -o d3
	./d3

data6: createdata6.o
	gcc -Wall -ansi -pedantic createdata6.o -o d6
	./d6

data9: createdata9.o
	gcc -Wall -ansi -pedantic createdata9.o -o d9
	./d9
	


createdata3.o: createdata3.c
	gcc -c -Wall -ansi -pedantic createdata3.c

createdata6.o: createdata6.c
	gcc -c -Wall -ansi -pedantic createdata6.c

createdata9.o: createdata9.c
	gcc -c -Wall -ansi -pedantic createdata9.c



clean:
	rm -f *.o data3 d3 data6 d6 data9 d9

