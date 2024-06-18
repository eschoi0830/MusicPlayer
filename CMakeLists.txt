cmake_minimum_required(VERSION 3.10)

project(MusicPlayer)

# 기본 설정
set(CMAKE_C_STANDARD 11)

# 인클루드 디렉토리 설정
include_directories(include)

# 실행 파일 타겟 정의
add_executable(Player
    src/Player.c
    libs/linkedlist.c
    libs/textfilewriter.c
)

add_executable(PlayerTest
    tst/PlayerTest.cc
    libs/linkedlist.c
    libs/textfilewriter.c
)

# GTest 라이브러리 경로 설정 (필요 시 수정)
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# 테스트 실행 파일에 GTest 라이브러리 링크
target_link_libraries(PlayerTest ${GTEST_LIBRARIES} pthread)

