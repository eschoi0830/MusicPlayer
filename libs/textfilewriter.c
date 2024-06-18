#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "linkedlist.h"
#include "textfilewriter.h"

void create_music_titles(FILE* stream) {
    if (stream == NULL) {
        printf("파일 포인터가 NULL입니다.\n");
        return;
    }
    char title[MAX_TITLE_SIZE];
    while (fgets(title, sizeof(title), stream)) {
        size_t len = strlen(title);
        if (len > 0 && title[len - 1] == '\n') {
            title[len - 1] = '\0';
        }
        append(strlen(title) + 1, title);
    }
}

void read_file(char* file_name) {
    FILE* file = fopen(file_name, "r");
    if (file == NULL) {
        perror("파일을 열 수 없습니다");
        return;
    }

    clear();  // 기존 리스트 비움

    char line[MAX_TITLE_SIZE];
    while (fgets(line, sizeof(line), file)) {
        size_t len = strlen(line);
        if (len > 0 && line[len - 1] == '\n') {
            line[len - 1] = '\0';
        }
        append(strlen(line) + 1, line);
    }

    fclose(file);
}

void write_file(char* file_name) {
    FILE* file = fopen(file_name, "w");
    if (file == NULL) {
        perror("Failed to open file");
        return;
    }

    Node* current = first_node(); // 리스트의 첫 번째 노드로 이동
    while (current != NULL) {
        fprintf(file, "%s\n", current->data);
        current = next();
    }

    fclose(file);
}


