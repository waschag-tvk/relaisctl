all: relaisctl

CXX_OPTS = -g

ifdef K8056_DEVICE
	CXX_OPTS += -D K8056_DEVICE=\"$(K8056_DEVICE)\"
endif

OTHERS = \
	relais.cpp

%: %.cpp
	$(CXX) -std=c++11 $(CXX_OPTS) $(OTHERS) -o $@ $^
