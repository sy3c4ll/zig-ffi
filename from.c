#include "from.h"
#include <stdio.h>

void hello(void) {
  printf("Hello, world!\n");
}

void pr_int(int x) {
  printf("Your number is %d\n", x);
}

uint16_t answers(void) {
  fprintf(stderr, "I always thought something was fundamentally wrong with the universe.\n");
  return 42;
}

char which_a(bool uppercase) {
  return uppercase ? 'A' : 'a';
}

int sum(int a, int b) {
  return a + b;
}

struct from from_init(int i, float f, uint64_t u) {
  struct from new = {i, f, u};
  return new;
}
