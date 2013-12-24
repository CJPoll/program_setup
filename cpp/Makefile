CC = g++
CFLAGS = -Werror -Wall -c
LDFLAGS = -Werror -Wall
#LOADLIBES = #-lgsl

# Don't mess with these things unless changing how everything is setup.
SOURCEDIR = ./src/
OBJECTDIR = ./obj/
EXECDIR = ./bin/
TESTDIR = ./test/

# If there is a final executable, what is it's name?
EXECUTABLE = test_app

# Sources and Test sources should only be filenames and not include directory
# paths.
SOURCES = test_app.cpp
TESTSRCS = test_app_tests.cpp

OBJECTFILES = $(SOURCES:.cpp=.o)
	OBJECTS = $(foreach OBJECT, $(OBJECTFILES), $(OBJECTDIR)$(OBJECT));

TESTOBJFILES = $(TESTSRCS:.cpp=.o)
	TESTOBJECTS = $(foreach TESTOBJECT, $(TESTOBJFILES), $(TESTDIR$)$(TESTOBJECT))

.PHONY : clean

all: $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $(EXECDIR)$(EXECUTABLE)

$(TESTDIR)%.o: $(TESTDIR)%.cpp
	$(CC) $(CFLAGS) -I ./gtest-1.7.0/include -g $^ -o $@

$(OBJECTDIR)%.o: $(SOURCEDIR)%.cpp
	$(CC) $(CFLAGS) -g $^ -o $@

tests: $(TESTOBJECTS) $(OBJECTS) 
	$(CC) $(LDFLAGS) -L ./gtest-1.7.0/lib $^ /usr/local/lib/gtest-1.7.0/make/gtest_main.a -lpthread -o $(EXECDIR)$@

test: tests
	./bin/tests

clean:
	-rm ./bin/* ./obj/* ./test/*.o
