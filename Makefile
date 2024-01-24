CXXFLAGS=-Wall -g

TARGET=lab1

SOURCES=prefix.cpp
OBJECTS=$(SOURCES:.cpp=.o)

.PHONY: all clean test

all: $(TARGET)

test: all
	./$(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $^ -o $(TARGET)


clean:
	rm -f \
		$(OBJECTS)	\
		$(TARGET)
