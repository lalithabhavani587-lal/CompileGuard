#include <stdio.h>

int main() {
    int arr[8] = {10, 20, 30, 40, 50, 60, 70, 80};
    size_t n = sizeof(arr) / sizeof(arr[0]);

    for (size_t i = 0; i < n; i++) {
        printf("%d\n", arr[i]);
    }

    return 0;
}
