CXX=g++
CXXFLAGS=-Wall -g -std=c++17 -pthread

lizard: lizard.o
	$(CXX) $(CXXFLAGS) $^ -o $@

lizard.o: lizard.cpp
	$(CXX) $(CXXFLAGS) -c $^

clean:
	rm -rf *.o lizard
