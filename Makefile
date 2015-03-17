CXX = clang++
CXXFLAGS = -O3 -g `llvm-config --cxxflags --ldflags --system-libs --libs core`
toy:

clean:
	rm toy
