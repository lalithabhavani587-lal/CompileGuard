#include <stdio.h>

int main() {
    int a, b;

    printf("Enter two numbers: ");
    if (scanf("%d %d", &a, &b) != 2) {
        return 1;
    }

    if (b == 0) {
        printf("Division by zero is not allowed\n");
        return 1;
    }

    printf("%d\n", a / b);
    return 0;
}
