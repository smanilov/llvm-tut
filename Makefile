CXX = clang++
CXXFLAGS = -g -O3 -rdynamic
LDFLAGS = -I/home/stan/Fortress/Dev/llvm/llvm360/include -I/home/stan/Fortress/Dev/llvm/build360/include  -DNDEBUG -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -O3 -fomit-frame-pointer -std=c++11 -fvisibility-inlines-hidden -fno-exceptions -fPIC -ffunction-sections -fdata-sections -Wcast-qual -L/home/stan/Fortress/Dev/llvm/build360/Release/lib -lLLVMX86Disassembler -lLLVMX86AsmParser -lLLVMX86CodeGen -lLLVMSelectionDAG -lLLVMAsmPrinter -lLLVMCodeGen -lLLVMScalarOpts -lLLVMProfileData -lLLVMInstCombine -lLLVMTransformUtils -lLLVMipa -lLLVMAnalysis -lLLVMX86Desc -lLLVMMCDisassembler -lLLVMX86Info -lLLVMX86AsmPrinter -lLLVMX86Utils -lLLVMMCJIT -lLLVMTarget -lLLVMExecutionEngine -lLLVMRuntimeDyld -lLLVMObject -lLLVMMCParser -lLLVMBitReader -lLLVMMC -lLLVMCore -lLLVMSupport -lz -lpthread -ldl -lm
toy: toy.cpp
	$(CXX) $(CXXFLAGS) toy.cpp $(LDFLAGS) -o toy

clean:
	rm toy
