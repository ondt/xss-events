cmake_minimum_required(VERSION 3.17)
project(xss_events C)

set(CMAKE_C_STANDARD 99)

add_executable(xss_events xss-events.c)
target_link_libraries(xss_events X11)
target_link_libraries(xss_events Xext)
target_link_libraries(xss_events Xss)
