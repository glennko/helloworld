VERSION = V1.0

SRC =  helloworld.cpp

CC = gcc
WARN   = -W -Wall
OPT ?= -O3
LDFLAGS = 
CPPFLAGS = $(OPT) $(WARN) -static
OBJ = $(SRC:.cpp=.o)

all: helloworld


streamss: helloworld.cpp 
	$(CC) -c $< -o $@ $(LDFLAGS) -static

clean:
	rm -f $(OBJ) helloworld

run:
	./helloworld

depend:
	@makedepend -Y -- $(CPPFLAGS) -- $(SRC) 2>> /dev/null
# DO NOT DELETE THIS LINE -- make depend depends on it.
