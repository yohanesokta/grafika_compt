@echo off

if "%1"=="setup" (
    echo Running setup...
    if not exist build mkdir build
    cd build
    cmake -G "MinGW Makefiles" ..
    cd ..
) else (
    echo Running build...
    cd build
    mingw32-make
    cd ..
)

echo Done.
