  .text
  .intel_syntax noprefix
  .global main

yy: .int 100
x: .int 43
y: .int 44

main:
  
  inc dword ptr [rip + value]

  mov edi, [rip + value]
  
  call writei64

  call finish

.data
  
  value: .int 200

  
