#include <stdio.h>

int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int *p = arr;
    int index;

    printf("Enter index: ");
    scanf("%d", &index);

    printf("%d\n", *(p + index));
    return 0;
}
