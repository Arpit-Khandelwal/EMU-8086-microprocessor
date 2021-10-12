
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
MOV [2000H], 019H
MOV [2001H], 0BCH
MOV [2002H], 08H
MOV [2003H], 088H

MOV AX, 000H
MOV CH, 004H
DEC CH

L1: MOV CL,CH
    MOV SI, 2000H    
    
L2: MOV AL,[SI]
    INC SI
    CMP AL, [SI]
    JNC L3
    XCHG AL, [SI]
    DEC SI
    MOV [SI], AL
    INC SI
L3: DEC CL
    JNZ L2
    DEC CH
    JNZ L1
    

ret




