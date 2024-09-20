  .text
  .intel_syntax noprefix
  .global main

yy: .int 100
x: .int 43
y: .int 44

main:
  
  push 17
  
  mov rdi, [rsp]
  
  call writei64

  pop rax
  
  mov rdi, rax

  call writei64

  call finish

.data
  
  value: .int 200

  
