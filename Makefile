all: relaisctl

CXX_OPTS = -g

OTHERS = \
	relais.cpp

%: %.cpp
	$(CXX) -std=c++11 $(CXX_OPTS) $(OTHERS) -o $@ $^
