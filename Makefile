CXX ?= c++
CXXFLAGS ?= -std=c++11 -Wall -Wextra
CPPFLAGS += -DGL_SILENCE_DEPRECATION

TARGET := output
SOURCES := main.cpp utilities.cpp scene2.cpp scene4.cpp scene8.cpp
OBJECTS := $(SOURCES:.cpp=.o)

ifeq ($(shell uname -s),Darwin)
LDLIBS := -framework OpenGL -framework GLUT
else
LDLIBS := -lGL -lGLU -lglut -lm
endif

.PHONY: all main run clean

all: $(TARGET)

# Keep the original target name working for anyone using `make main`.
main: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(LDFLAGS) -o $@ $^ $(LDLIBS)

main.o: main.cpp utilities.h scenes.h
utilities.o: utilities.cpp utilities.h
scene2.o: scene2.cpp utilities.h scenes.h
scene4.o: scene4.cpp utilities.h scenes.h
scene8.o: scene8.cpp utilities.h scenes.h

%.o: %.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET)
