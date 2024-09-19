#include <stdio.h>

typedef struct {
    int* ptr;
} A;


void a() {
  A new_A = {
    .ptr = 0x12132224
  };
}





int main() {
    a();
}
