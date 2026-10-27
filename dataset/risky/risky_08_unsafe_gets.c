#include <stdio.h>

int main() {
    char buffer[10];

    printf("Enter text: ");
    gets(buffer);

    printf("%s\n", buffer);
    return 0;
}
