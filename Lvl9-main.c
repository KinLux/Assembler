#include <stdio.h>
#include "Lvl9-add42.h"

int main() {
  int result;
  result = add42(30);
  printf("Result: %i \n", result);
  return0;
}

// $gcc  -m32 add42.o Lvl9-main.c -o Lvl9
