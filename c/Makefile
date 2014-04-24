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
MAIN = main.c
SOURCES = source.c
TESTSRCS = source_test.c

OBJECTFILES = $(SOURCES:.c=.o)
	OBJECTS = $(foreach OBJECT, $(OBJECTFILES), $(OBJECTDIR)$(OBJECT));

TESTOBJFILES = $(TESTSRCS:.c=.o)
	TESTOBJECTS = $(foreach TESTOBJECT, $(TESTOBJFILES), $(TESTDIR$)$(TESTOBJECT))

MAINOBJFILE = $(MAIN:.c=.o)
MAINOBJ = $(OBJECTDIR)$(MAINOBJFILE)

.PHONY : clean

all: $(MAINOBJ) $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $(EXECDIR)$(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	    $(CC) $(LDFLAGS)  $^ -o $(EXECDIR)$(EXECUTABLE)

$(TESTDIR)%.o: $(TESTDIR)%.c
	        $(CC) $(CFLAGS) -g $^ -o $@

$(OBJECTDIR)%.o: $(SOURCEDIR)%.c
	        $(CC) $(CFLAGS) -g $^ -o $@

tests: $(TESTOBJECTS) $(OBJECTS) 
	        $(CC) $(LDFLAGS) $^ /usr/local/lib/libcunit.a -o $(EXECDIR)$@

test: tests
	        ./bin/tests

clean:
	        -rm ./bin/* ./obj/* ./test/*.o
