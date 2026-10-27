#include <stdio.h>
#include <string.h>

int main() {
    char source[20] = "CompileGuard";
    char destination[30];

    strncpy(destination, source, sizeof(destination) - 1);
    destination[sizeof(destination) - 1] = '\0';

    printf("%s\n", destination);
    return 0;
}
