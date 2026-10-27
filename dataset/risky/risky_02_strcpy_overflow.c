#include <stdio.h>
#include <string.h>

int main() {
    char small[5];
    char large[50];

    printf("Enter text: ");
    scanf("%s", large);

    strcpy(small, large);
    printf("%s\n", small);
    return 0;
}
