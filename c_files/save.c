#include <stdio.h>

int main() {
    FILE *file = fopen("number.bin", "wb");
    if (file == NULL) {
        printf("Ошибка открытия файла!\n");
        return 1;
    }

    int number = 12345;

    fwrite(&number, sizeof(int), 1, file);

    fclose(file);

    printf("Число записано в бинарный файл.\n");

    return 0;
}

