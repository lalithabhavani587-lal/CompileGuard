#include <stdio.h>
#include <limits.h>

int main() {
    int a, b;

    printf("Enter two numbers: ");
    if (scanf("%d %d", &a, &b) != 2) {
        return 1;
    }

    if (a > 0 && b > INT_MAX - a) {
        printf("Addition overflow detected\n");
        return 1;
    }

    printf("%d\n", a + b);
    return 0;
}
