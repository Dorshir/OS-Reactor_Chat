CXX = clang-14
CXXFLAGS = -Wall -Wextra -std=c++17 -lstdc++ -pthread

.PHONY: all clean check

all: Server

Server: Server.cpp libst_reactor.so
	$(CXX) $(CXXFLAGS) -o $@ $< -L. -lst_reactor

libst_reactor.so: st_reactor.cpp st_reactor.hpp
	$(CXX) $(CXXFLAGS) -fPIC -shared -o $@ $<

clean:
	rm -f Server libst_reactor.so

valgrind: Server
	valgrind --leak-check=full ./Server
