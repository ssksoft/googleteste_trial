CXX = g++
CXXFLAGS = -std=gnu++11

TARGET = Sample.exe
TARGETDIR = bin

INCLUDES = -I"C:\googletest-release-1.8.1\googletest\include\gtest\internal" -I"C:\googletest-release-1.8.1\googletest\include\gtest" -I"include" -I"C:\googletest-release-1.8.1\googletest\include"

SRCDIR = src
SRCS = $(SRCDIR)/sample1.cpp
OBJS := $(SRCS:.cpp=.o)

TESTDIR = test
TESTSRCS = $(TESTDIR)/test_sample1.cpp
TESTOBJS := $(TESTSRCS:.cpp=.o)

GTESTLIB = -L"C:\googletest-release-1.8.1\build\googlemock\gtest"

GTEST_LIBDIR = -I"C:\googletest-release-1.8.1\googletest\include"

GTESTFLAGS = -lgtest -lgtest_main -lpthread

# .PHONY: all clean
# .SUFFIXES: .c .cpp .o

all: $(TARGETDIR)/$(TARGET)

# $(TARGETDIR)\$(TARGET): $(OBJS) $(TESTOBJS)
# 	$(CXX) -o $@ $^ $(GTEST_LIBDIR) $(GTESTLIB) $(GTESTFLAGS)

$(TARGETDIR)/$(TARGET): $(OBJS) $(TESTOBJS)
	$(CXX) -o $@ $^  $(GTESTLIB) $(GTEST_LIBDIR) $(GTESTFLAGS)


.cpp.o:
	$(CXX) $(INCLUDES) $(CXXFLAGS) -o $@ -c $^
# .cpp:
# 	$(CXX) $(INCLUDES) $(CXXFLAGS) -o $@ $^
