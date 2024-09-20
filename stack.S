  .intel_syntax noprefix
  
  .text

  .global main

main:


  push 17

  push 7

  mov rdi, [rsp + 8]

  call writei64 // выведет 17

  inc qword ptr [rsp + 8] // 17 -> 18
  
  lea edi, [rsp - 8]

  call writei64 // выведет 18

  call finish
