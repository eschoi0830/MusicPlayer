#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "linkedlist.h"
#include "textfilewriter.h"

// 내부 변수 참조를 위해 extern 키워드 사용
extern Node* _cur_node;

void read_command(char* cmd);

int main() {
    char command[100];

    printf("뮤직 플레이어에 오신 것을 환영합니다!\n");
    while (1) {
        printf("> ");
        if (fgets(command, sizeof(command), stdin) != NULL) {
            size_t len = strlen(command);
            if (len > 0 && command[len - 1] == '\n') {
                command[len - 1] = '\0';
            }
            read_command(command);
        }
    }

    return 0;
}

void read_command(char* cmd) {
    char* token = strtok(cmd, " ");
    if (token == NULL) {
        return;
    }

    if (strcmp(token, "add") == 0) {
        token = strtok(NULL, " ");
        if (token != NULL) {
            append_left(strlen(token) + 1, token);
        }
    } else if (strcmp(token, "del") == 0) {
        token = strtok(NULL, " ");
        if (token != NULL) {
            delete_by_data(token);
        }
    } else if (strcmp(token, "list") == 0) {
        print();
    } else if (strcmp(token, "next") == 0) {
        next();
    } else if (strcmp(token, "prev") == 0) {
        prev();
    } else if (strcmp(token, "play") == 0) {
        if (_cur_node != NULL) {
            printf("[%s] is now playing!\n", _cur_node->data);
        } else {
            printf("재생 목록이 비어있습니다.\n");
        }
    } else if (strcmp(token, "clear") == 0) {
        clear();
        printf("LinkedList is cleared!\n");
    } else if (strcmp(token, "quit") == 0) {
        clear();
        printf("LinkedList is cleared!\nquit!\n");
        exit(0);
    } else if (strcmp(token, "load") == 0) {
        token = strtok(NULL, " ");
        if (token != NULL) {
            read_file(token);
        }
    } else if (strcmp(token, "save") == 0) {
        token = strtok(NULL, " ");
        if (token != NULL) {
            write_file(token);
        }
    } else {
        printf("알 수 없는 명령어입니다.\n");
    }
}

