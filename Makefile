.PHONY: all

CXXFLAGS=-g -O2 -Wall -pedantic -Wextra -Werror -Wno-unused-parameter -Wno-long-long

all: test.cpp libpopcnt.h
	$(CXX) $(CXXFLAGS) test.cpp -o test

check: all
	./test

clean:
	rm -f ./test
