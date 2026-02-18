cmake_minimum_required(VERSION 3.10)
project(GLUTApp)

set(GL_LIBS
    glut32
    opengl32
    glu32
)

add_executable(main main.cpp)
add_executable(codeblok codeblok.cpp)
add_executable(tugas2 coursework/pertemuan2.cpp)

foreach(target main codeblok tugas2)
    target_link_libraries(${target} PRIVATE ${GL_LIBS})
endforeach()