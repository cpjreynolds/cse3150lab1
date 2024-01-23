CXXFLAGS=-Wall -g

TARGET=lab1

SOURCES=prefix.cpp
OBJECTS=$(SOURCES:.cpp=.o)

.PHONY: all clean test

all: $(TARGET)

test: all
	./$(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ -o $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $^

clean:
	rm -f \
		$(OBJECTS)	\
		$(TARGET)
