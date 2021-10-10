
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

MOV AX, 00888H
MOV BX, 019BCH

MOV DX, 0FF12H  
MOV CX, 067ABH

NEG AX
NEG BX

ADD CX,AX
ADD DX,BX

ret




