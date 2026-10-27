#include <stdio.h>

int main() {
    int size = 10;
    int index;

    printf("Enter index: ");
    scanf("%d", &index);

    if (index + 1 > size) {
        printf("Invalid index\n");
        return 1;
    }

    int arr[10];
    arr[index] = 100;

    printf("Value: %d\n", arr[index]);
    return 0;
}
