  .intel_syntax noprefix
  .global main
main:

  call readi64

  mov r12, rax

  call readi64

  add rax, r12
    
  mov rdi, rax

  call writei64

  call finish



