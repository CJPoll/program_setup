CC = g++
CFLAGS = -Werror -Wall -c
LDFLAGS = -Werror -Wall
LOADLIBES = -lgsl

# Don't mess with these things unless changing how everything is setup.
SOURCEDIR = ./src/
OBJECTDIR = ./obj/
EXECDIR = ./bin/
TESTDIR = ./test/

# If there is a final executable, what is it's name?
EXECUTABLE = exec

# Sources and Test sources should only be filenames and not include directory
# paths.
MAIN = src/main/main.cpp
SOURCES = $(shell ls src/*.cpp)
TESTSRCS = $(shell ls test/*.cpp)

OBJECTFILES = $(SOURCES:.cpp=.o)
OBJECTS = $(subst src,obj,${OBJECTFILES})

MAINOBJ = $(MAIN:.cpp=.o)
MAINOBJFILE = $(subst src,obj,${MAINOBJ})

TESTOBJECTS = $(TESTSRCS:.cpp=.o)

.PHONY : clean

all: $(EXECUTABLE)

run: all
	./bin/$(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS) $(MAINOBJFILE)
	$(CC) $(LDFLAGS) -g $^ -o $(EXECDIR)$(EXECUTABLE)

$(OBJECTDIR)main/$(MAINOBJFILE):
	$(CC) $(LDFLAGS) -g $^ -o $@

$(TESTDIR)%.o: $(TESTDIR)%.cpp
	$(CC) $(CFLAGS) -g $^ -o $@

$(OBJECTDIR)%.o: $(SOURCEDIR)%.cpp
	$(CC) $(CFLAGS) -g $^ -o $@

tests: $(TESTOBJECTS) $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $(EXECDIR)$@

test: tests
	./bin/tests

clean:
	-rm -rf ./bin/* ./obj/* ./test/*.o
