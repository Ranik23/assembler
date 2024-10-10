.intel_syntax noprefix
.global main


main:
  mov rax, 5

  lea rdi, 0[rax+rax*2]

  call writei64

  call finish

