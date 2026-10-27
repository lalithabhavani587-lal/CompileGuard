#include <stdio.h>

int main() {
    FILE *fp = fopen("data.txt", "r");

    if (fp == NULL) {
        printf("File cannot be opened\n");
        return 1;
    }

    fclose(fp);
    printf("File opened successfully\n");
    return 0;
}
