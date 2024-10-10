.section .text
    .intel_syntax noprefix
    .global main
main:
  
  mov rdi, [rip + x]
  
  call writei64
  
  call finish

.data 
x: .ascii "Hello World"  
