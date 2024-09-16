#include <stdint.h>
#include <stdio.h>


typedef struct {
  uint8_t byte_0;
  uint8_t byte_1;
  uint8_t byte_2;
  uint8_t byte_3;
} four_bytes_t;

typedef union {
  four_bytes_t as_four_bytes;
  uint32_t as_32bit_uint;
} bytes_or_uint32_t;


int main() {
  
  bytes_or_uint32_t source = { .as_32bit_uint = 0x01234567 };
  bytes_or_uint32_t result;

  result.as_four_bytes.byte_0 = source.as_four_bytes.byte_3;
  result.as_four_bytes.byte_1 = source.as_four_bytes.byte_2;
  result.as_four_bytes.byte_2 = source.as_four_bytes.byte_1;
  result.as_four_bytes.byte_3 = source.as_four_bytes.byte_0;

  printf("Reverted Value is 0x%x\n", result.as_32bit_uint);
}
