.intel_syntax noprefix
.global main


main:

  lea rax, [var] 

  mov rdi, [rax]
  
  call writei64
  
  call finish

.data
  var:
    .byte 1000

