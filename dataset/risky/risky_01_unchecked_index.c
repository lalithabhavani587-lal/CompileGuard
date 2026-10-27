#include <stdio.h>

int main() {
    int arr[10];
    int index;

    printf("Enter index: ");
    scanf("%d", &index);

    arr[index] = 100;
    printf("%d\n", arr[index]);
    return 0;
}
