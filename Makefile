.PHONY: all clean

all: extern cimport

clean:
	rm -f extern cimport *.o

extern: from.o extern.o to.o

cimport: from.o cimport.o to.o

extern.o: extern.zig
	zig build-obj -fPIE -fno-stack-check $<

cimport.o: cimport.zig
	zig build-obj -lc -I. -fno-stack-check $<
