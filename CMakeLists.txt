cmake_minimum_required(VERSION 3.10)
project(GLUTApp)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)

add_executable(main main.cpp)
add_executable(codeblok codeblok.cpp)
add_executable(tugas2 coursework/pertemuan2.cpp)


foreach(target main codeblok tugas2)
    target_link_options(${target} PRIVATE 
        -static -static-libgcc -static-libstdc++
    )

    target_link_libraries(${target} PRIVATE 
        OpenGL::GL
        OpenGL::GLU
        GLUT::GLUT
    )
endforeach()