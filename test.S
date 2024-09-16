    .text
    .intel_syntax noprefix
    .global main, printout

printout:
    
  mov rdi, rax

  call writei64

  call finish

main:

  call readi64

  mov r12, rax
  
  call readi64

  jmp process

