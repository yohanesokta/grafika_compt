cmake_minimum_required(VERSION 3.10)
project(GLUTApp)

add_executable(main main.cpp)

target_link_libraries(main
    glut32
    opengl32
    glu32
)
