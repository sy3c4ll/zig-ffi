#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

//extern const uint32_t ZIG_MACRO_VAR;
//extern const char* ZIG_MACRO_FN(int x);
//extern struct from;
extern void zig_hello(void);
extern void zig_pr_int(int x);
extern uint16_t zig_answers(void);
extern char zig_which_a(bool uppercase);
extern int zig_sum(int a, int b);
//extern struct from zig_from_init(int i, float f, uint64_t u);

int main(void) {
  zig_hello();
  zig_pr_int(6);
  printf("%d\n", zig_answers());
  printf("%c\n", zig_which_a(true));
  printf("%d\n", zig_sum(4, 2));
  //printf("%f\n", zig_from_init(6, 4.2, 2147483648).f);
}
