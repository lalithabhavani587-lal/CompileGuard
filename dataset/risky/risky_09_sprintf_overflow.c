#include <stdio.h>

int main() {
    char buffer[10];
    char input[50];

    printf("Enter text: ");
    scanf("%s", input);

    sprintf(buffer, "%s", input);
    printf("%s\n", buffer);
    return 0;
}
