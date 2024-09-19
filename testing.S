  .text
  .intel_syntax noprefix
  .global main

yy: .int 100
x: .int 43
y: .int 44

main:
    
    lea rdi, [y]
    call writei32


    lea rdi, [main]

    call writei32

    lea rdi, [rip]
  
    call writei32

    call finish
