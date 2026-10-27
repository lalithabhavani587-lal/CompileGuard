#include <stdio.h>
#include <string.h>

int main() {
    char small_buffer[8];
    char user_input[100];
    int index;

    printf("Enter text: ");
    if (scanf("%99s", user_input) != 1) {
        return 1;
    }

    printf("Enter index: ");
    if (scanf("%d", &index) != 1) {
        return 1;
    }

    if (index < 0 || index >= 8) {
        printf("Invalid index\n");
        return 1;
    }

    strncpy(small_buffer, user_input, sizeof(small_buffer) - 1);
    small_buffer[sizeof(small_buffer) - 1] = '\0';

    int arr[8];
    arr[index] = 10;

    printf("%s %d\n", small_buffer, arr[index]);
    return 0;
}
