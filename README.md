project is a graphical application developed using C++, OpenGL, and the GLUT library. It demonstrates basic rendering techniques, specifically drawing geometric primitives.

## Prerequisites

Before building this project, ensure the following tools are installed and configured in your system environment path:

- C++ Compiler (MinGW recommended for Windows)
- CMake (Version 3.10 or higher)
- OpenGL libraries
- GLUT/FreeGLUT libraries

## Setup

To initialize the project build system, execute the provided setup script. This script creates the necessary build directory and generates the MinGW makefiles.

1. Open a terminal or command prompt in the project root directory.
2. Run the setup script:
   ```cmd
   build.bat setup
   ```

## Building the Project

After setting up the project, you can compile the source code using the build script.

Run the following command:
```cmd
build.bat
```

This will invoke `mingw32-make` within the build directory and generate the executables.

## Running the Application

Upon successful compilation, the executables will be located in the `build` directory. You can run them via the command line:

```cmd
cd build
main.exe
```

## Project Structure

- `CMakeLists.txt`: CMake configuration file defining build targets and dependencies.
- `build.bat`: Script to compile the project.
