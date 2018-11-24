## Compiler
CXX = g++

## Compiler Flags
## -g			Debugging enable
## -Wall		Shows all warnings
## -std=c++0x	Compile with C++11 standards (using beta flag because C4 machines use gcc 4.4.7)
CXXFLAGS  = -g -Wall -std=c++11 

## Build target  
TARGET = class_manager

all: $(TARGET)

$(TARGET): STF2018_TP_01.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET)

clean:
	$(RM) $(TARGET) text.txt
