; a program to add three numbers using byte variables
[org 0x0100]
    xor  ax, ax                 ; check effect on ZF 

    mov  bx, num1

    add  ax, [bx]
    add  bx, 2
    
    add  ax, [bx]
    add  bx, 2

    add  ax, [bx]
    add  bx, 2


    mov  [result], ax
    
    mov  ax, 0x4c00
    int  0x21


    ; to turn this into an iteration, we need a couple of things: 
    ; - branching instruction 
    ; - checking constraints -- e.g. c > 0       ; Intel Sotware Developer Manual - Figure 3-8 (Page 80) 


num1: dw  5, 10, 15
result: dw 0 
