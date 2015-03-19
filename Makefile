CXX = clang++
CXXFLAGS = -g -O3
LDFLAGS = `llvm-config --cxxflags --ldflags --system-libs --libs core`
toy: toy.cpp
	$(CXX) $(CXXFLAGS) toy.cpp $(LDFLAGS) -o toy

clean:
	rm toy
