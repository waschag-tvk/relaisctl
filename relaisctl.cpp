#include "relais.h"


int main(int argc, char** argv) {
	initserie();
	if(argc != 2) {
		std::cerr << "Usage: " << argv[0] << " port (one of 1, 2, 3)" << std::endl;
		return 1;
	}
	int port = std::atoi(argv[1]);
	openPort(port,true);
	std::cout << "Opened device at port " << port;
}
