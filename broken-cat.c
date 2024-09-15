#include <stdio.h>



int main(int argc, char* argv[]) {
  
  FILE* f = fopen(argv[1], "r");
  int sym = 0;
  while (EOF != (sym=fgetc(f))) {
      fputc(sym, stdout);
  }
  fclose(f);
}
