CXX=       	g++
CXXFLAGS= 	-g -gdwarf-2 -std=gnu++11 -Wall -Iinclude -fPIC
LDFLAGS=	

all:    fs

%.o:	%.cpp fs.h disk.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<

fs:	disk.o fs.o
	$(CXX) $(LDFLAGS) -o $@ $<

clean:
	rm -f fs main.o fs.o

.PHONY: all clean

