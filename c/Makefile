C = gcc
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
MAIN = src/main/main.c
SOURCES = $(shell ls src/*.c src/*.h)
TESTSRCS = $(shell ls test/*.c)

OBJECTFILES = $(SOURCES:.c=.o)
OBJECTS = $(subst src,obj,${OBJECTFILES})

MAINOBJ = $(MAIN:.c=.o)
MAINOBJFILE = $(subst src,obj,${MAINOBJ})

TESTOBJECTS = $(TESTSRCS:.c=.o)

.PHONY : clean

all: $(EXECUTABLE)

run: all
	./bin/$(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	$(CC) $(LDFLAGS)  $^ -o $(EXECDIR)$(EXECUTABLE)

$(OBJECTDIR)main/$(MAINOBJFILE):
	$(CC) $(LDFLAGS) -g $^ -o $@

$(TESTDIR)%.o: $(TESTDIR)%.c
	$(CC) $(CFLAGS) -g $^ -o $@

$(OBJECTDIR)%.o: $(SOURCEDIR)%.c
	$(CC) $(CFLAGS) -g $^ -o $@

tests: $(TESTOBJECTS) $(OBJECTS)
	$(CC) $(LDFLAGS) $^ /usr/local/lib/libcunit.a -o $(EXECDIR)$@

test: tests
	./bin/tests

clean:
	-rm -rf ./bin/* ./obj/* ./test/*.o
