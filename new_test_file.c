#include <stdio.h>
#include <string.h>

int main() {
    char small_buffer[8];
    char user_input[100];
    int index;

    printf("Enter text: ");
    scanf("%s", user_input);

    printf("Enter index: ");
    scanf("%d", &index);

    strcpy(small_buffer, user_input);

    if (index + 1 > 8) {
        printf("Invalid index\n");
        return 1;
    }

    int arr[8];
    arr[index] = 10;

    printf("%s %d\n", small_buffer, arr[index]);
    return 0;
}
