.intel_syntax noprefix
.global main

main:  

  lea r12, [arr] // load effective address, 
  
  mov rdi, r12

  call writei64

  call finish

.data
  arr:
    .skip 10 * 4




