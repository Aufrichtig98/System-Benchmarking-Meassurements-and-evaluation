# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/manuel/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5080.54/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/manuel/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5080.54/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/manuel/Seminar Benchmark"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/manuel/Seminar Benchmark"

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/home/manuel/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5080.54/bin/cmake/linux/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/home/manuel/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5080.54/bin/cmake/linux/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start "/home/manuel/Seminar Benchmark/CMakeFiles" "/home/manuel/Seminar Benchmark//CMakeFiles/progress.marks"
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start "/home/manuel/Seminar Benchmark/CMakeFiles" 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Seminar_Benchmark

# Build rule for target.
Seminar_Benchmark: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Seminar_Benchmark
.PHONY : Seminar_Benchmark

# fast build rule for target.
Seminar_Benchmark/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/build
.PHONY : Seminar_Benchmark/fast

ANOVA.o: ANOVA.cpp.o
.PHONY : ANOVA.o

# target to build an object file
ANOVA.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/ANOVA.cpp.o
.PHONY : ANOVA.cpp.o

ANOVA.i: ANOVA.cpp.i
.PHONY : ANOVA.i

# target to preprocess a source file
ANOVA.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/ANOVA.cpp.i
.PHONY : ANOVA.cpp.i

ANOVA.s: ANOVA.cpp.s
.PHONY : ANOVA.s

# target to generate assembly for a file
ANOVA.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/ANOVA.cpp.s
.PHONY : ANOVA.cpp.s

heapSort.o: heapSort.cpp.o
.PHONY : heapSort.o

# target to build an object file
heapSort.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/heapSort.cpp.o
.PHONY : heapSort.cpp.o

heapSort.i: heapSort.cpp.i
.PHONY : heapSort.i

# target to preprocess a source file
heapSort.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/heapSort.cpp.i
.PHONY : heapSort.cpp.i

heapSort.s: heapSort.cpp.s
.PHONY : heapSort.s

# target to generate assembly for a file
heapSort.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/heapSort.cpp.s
.PHONY : heapSort.cpp.s

listGeneration.o: listGeneration.cpp.o
.PHONY : listGeneration.o

# target to build an object file
listGeneration.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/listGeneration.cpp.o
.PHONY : listGeneration.cpp.o

listGeneration.i: listGeneration.cpp.i
.PHONY : listGeneration.i

# target to preprocess a source file
listGeneration.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/listGeneration.cpp.i
.PHONY : listGeneration.cpp.i

listGeneration.s: listGeneration.cpp.s
.PHONY : listGeneration.s

# target to generate assembly for a file
listGeneration.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/listGeneration.cpp.s
.PHONY : listGeneration.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/main.cpp.s
.PHONY : main.cpp.s

mergeSort.o: mergeSort.cpp.o
.PHONY : mergeSort.o

# target to build an object file
mergeSort.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/mergeSort.cpp.o
.PHONY : mergeSort.cpp.o

mergeSort.i: mergeSort.cpp.i
.PHONY : mergeSort.i

# target to preprocess a source file
mergeSort.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/mergeSort.cpp.i
.PHONY : mergeSort.cpp.i

mergeSort.s: mergeSort.cpp.s
.PHONY : mergeSort.s

# target to generate assembly for a file
mergeSort.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/mergeSort.cpp.s
.PHONY : mergeSort.cpp.s

quickSort.o: quickSort.cpp.o
.PHONY : quickSort.o

# target to build an object file
quickSort.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/quickSort.cpp.o
.PHONY : quickSort.cpp.o

quickSort.i: quickSort.cpp.i
.PHONY : quickSort.i

# target to preprocess a source file
quickSort.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/quickSort.cpp.i
.PHONY : quickSort.cpp.i

quickSort.s: quickSort.cpp.s
.PHONY : quickSort.s

# target to generate assembly for a file
quickSort.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Seminar_Benchmark.dir/build.make CMakeFiles/Seminar_Benchmark.dir/quickSort.cpp.s
.PHONY : quickSort.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... Seminar_Benchmark"
	@echo "... ANOVA.o"
	@echo "... ANOVA.i"
	@echo "... ANOVA.s"
	@echo "... heapSort.o"
	@echo "... heapSort.i"
	@echo "... heapSort.s"
	@echo "... listGeneration.o"
	@echo "... listGeneration.i"
	@echo "... listGeneration.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... mergeSort.o"
	@echo "... mergeSort.i"
	@echo "... mergeSort.s"
	@echo "... quickSort.o"
	@echo "... quickSort.i"
	@echo "... quickSort.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

