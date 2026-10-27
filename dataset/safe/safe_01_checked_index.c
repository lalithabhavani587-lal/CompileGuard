#include <stdio.h>

int main() {
    int arr[10];
    int index;

    printf("Enter index: ");
    if (scanf("%d", &index) != 1) {
        return 1;
    }

    if (index < 0 || index >= 10) {
        printf("Invalid index\n");
        return 1;
    }

    arr[index] = 50;
    printf("%d\n", arr[index]);
    return 0;
}
