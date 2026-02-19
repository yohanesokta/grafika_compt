#### OpenGL-GLUT Project on Camps
> Project is a collection of graphical applications developed using C++, OpenGL, and the GLUT library. It demonstrates basic rendering techniques, specifically drawing geometric primitives.

## Prerequisites

> Ini bahkan jauh lebih stabil karena menggunakan FreeGlut yang package nya masih di ter maintenance dengan baik

Before building this project, ensure the following tools are installed and configured in your system environment path:

- **C++ Compiler**: MinGW-w64 (recommended for Windows) or GCC/Clang.
- **CMake**: Version 3.10 or higher.
- **OpenGL Libraries**: Should be included with your compiler or OS.
- **GLUT/FreeGLUT**: Ensure libraries and headers are available.

## Setup & Build

Use the provided `build.sh` script to manage the project. (Note: On Windows, use a bash-compatible terminal like Git Bash).

### 1. Initialization (Setup)
Run the following command once to generate the build files:
```bash
./build.sh setup
```

### 2. Compiling the Source
To build all targets, run:
```bash
./build.sh
```

## Running the Application

Upon successful compilation, executables are placed in the `bin/` directory.

### Available Targets
- `main`: Main entry point.
- `codeblok`: Geometric primitives demonstration.
- `tugas2`: Coursework assignment (Pertemuan 2).

### Running a specific target
You can run a target directly from the `build.sh` script by passing the target name:
```bash
./build.sh main
./build.sh codeblok
./build.sh tugas2
```
Alternatively, run them directly from the `bin/` folder:
```bash
./bin/main
./bin/codeblok
./bin/tugas2
```

## Project Structure

- `main.cpp`: Main source file.
- `codeblok.cpp`: Additional source file for geometric primitives.
- `coursework/`: Contains coursework assignments (e.g., `pertemuan2.cpp`).
- `bin/`: Contains pre-built DLLs (like `libfreeglut.dll`) and compiled executables.
- `build.sh`: Bash script to setup, compile, and run the applications.
- `CMakeLists.txt`: CMake configuration for the project.