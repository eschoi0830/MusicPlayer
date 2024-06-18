#include "gtest/gtest.h"
#include "textfilewriter.h"
#include "linkedlist.h"

// 내부 변수 참조를 위해 extern 키워드 사용
extern Node* _head;
extern Node* _cur_node;

// MusicPlayerTest 클래스: 각 테스트 케이스 실행 전후에 초기화 및 정리 작업을 수행
class MusicPlayerTest : public ::testing::Test {
protected:
    // 각 테스트가 실행되기 전에 호출됨
    void SetUp() override {
        clear();  // 재생 목록을 비움
    }

    // 각 테스트가 끝난 후에 호출됨
    void TearDown() override {
        clear();  // 재생 목록을 비움
    }
};

// 노래 추가 테스트
TEST_F(MusicPlayerTest, AddMusic) {
    append_left(strlen("Hello") + 1, (char*)"Hello");  // "Hello" 노래 추가
    EXPECT_EQ(size(), 1);  // 리스트 크기가 1인지 확인
    EXPECT_STREQ(_head->data, "Hello");  // 첫 번째 노래가 "Hello"인지 확인
}

// 노래 삭제 테스트
TEST_F(MusicPlayerTest, DeleteMusic) {
    append_left(strlen("Hello") + 1, (char*)"Hello");
    append_left(strlen("World") + 1, (char*)"World");
    delete_by_data((char*)"Hello");  // "Hello" 노래 삭제
    EXPECT_EQ(size(), 1);  // 리스트 크기가 1인지 확인
    EXPECT_STREQ(_head->data, "World");  // 남아있는 첫 번째 노래가 "World"인지 확인
}

// 리스트 출력 테스트
TEST_F(MusicPlayerTest, ListMusic) {
    append_left(strlen("Hello") + 1, (char*)"Hello");
    append_left(strlen("World") + 1, (char*)"World");
    testing::internal::CaptureStdout();
    print();  // 리스트 출력
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "LinkedList [ World Hello ]\n");  // 출력된 리스트가 예상과 일치하는지 확인
}

// 다음 및 이전 노래 이동 테스트
TEST_F(MusicPlayerTest, NextAndPrevMusic) {
    append_left(strlen("Hello") + 1, (char*)"Hello");
    append_left(strlen("World") + 1, (char*)"World");
    first_node();  // 첫 번째 노래로 이동
    next();  // 다음 노래로 이동
    EXPECT_STREQ(_cur_node->data, "Hello");  // 현재 노래가 "Hello"인지 확인
    prev();  // 이전 노래로 이동
    EXPECT_STREQ(_cur_node->data, "World");  // 현재 노래가 "World"인지 확인
}

// 노래 재생 테스트
TEST_F(MusicPlayerTest, PlayMusic) {
    append_left(strlen("Hello") + 1, (char*)"Hello");
    first_node();  // 첫 번째 노래로 이동
    testing::internal::CaptureStdout();
    if (_cur_node != NULL) {
        printf("[%s] is now playing!\n", _cur_node->data);  // 현재 노래 재생
    } else {
        printf("재생 목록이 비어있습니다.\n");
    }
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "[Hello] is now playing!\n");  // 출력된 메시지가 예상과 일치하는지 확인
}

// 리스트 비우기 테스트
TEST_F(MusicPlayerTest, ClearMusicList) {
    append_left(strlen("Hello") + 1, (char*)"Hello");
    clear();  // 리스트 비우기
    EXPECT_TRUE(empty());  // 리스트가 비어있는지 확인
    EXPECT_EQ(size(), 0);  // 리스트 크기가 0인지 확인
}

// 파일에서 리스트 읽기 테스트
TEST_F(MusicPlayerTest, LoadMusicList) {
    FILE* file = fopen("test_load.txt", "w");
    fprintf(file, "Hello\nWorld\n");  // 테스트용 파일에 노래 제목 작성
    fclose(file);

    read_file((char*)"test_load.txt");  // 파일에서 노래 목록 읽기
    EXPECT_EQ(size(), 2);  // 리스트 크기가 2인지 확인
    EXPECT_STREQ(_head->data, "Hello");  // 첫 번째 노래가 "Hello"인지 확인
    EXPECT_STREQ(_head->next->data, "World");  // 두 번째 노래가 "World"인지 확인

    remove("test_load.txt");  // 테스트용 파일 삭제
}

// 파일에 리스트 저장 테스트
TEST_F(MusicPlayerTest, SaveMusicList) {
    append(strlen("Hello") + 1, (char*)"Hello");
    append(strlen("World") + 1, (char*)"World");

    write_file((char*)"test_save.txt");  // 리스트를 파일에 저장

    FILE* file = fopen("test_save.txt", "r");
    char line[50];
    fgets(line, sizeof(line), file);  // 파일에서 첫 번째 줄 읽기
    EXPECT_STREQ(line, "Hello\n");  // 첫 번째 줄이 "Hello"인지 확인
    fgets(line, sizeof(line), file);  // 파일에서 두 번째 줄 읽기
    EXPECT_STREQ(line, "World\n");  // 두 번째 줄이 "World"인지 확인
    fclose(file);

    remove("test_save.txt");  // 테스트용 파일 삭제
}


// 테스트 케이스 실행을 위한 메인 함수
int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

