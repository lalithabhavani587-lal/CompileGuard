#include <stdio.h>

int main() {
    char name[20];

    printf("Enter name: ");
    if (fgets(name, sizeof(name), stdin) != NULL) {
        printf("Hello %s", name);
    }

    return 0;
}
