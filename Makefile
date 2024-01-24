CXXFLAGS=-Wall -g --std=c++17

TARGET=lab1.out

SOURCES:=$(wildcard *.cpp)
OBJECTS:=$(SOURCES:.cpp=.o)

.PHONY: all clean test

all: $(TARGET)

test: all
	./$(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $^ -o $@


clean:
	rm -f \
		$(OBJECTS)	\
		$(TARGET)
