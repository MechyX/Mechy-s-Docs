org 100h

;starting address and sorting upto 6 elements
MOV BX,1000h         

JMP LOOP1

SWAP:
MOV [SI],DX
MOV [SI+2],AX
JMP INC2

LOOP2:   
MOV AX,[SI]
MOV DX,[SI+2]
CMP AX,DX
JG SWAP
INC2:
ADD SI,2
CMP SI,100Ah
JNE LOOP2
JMP INC1

LOOP1:
MOV SI,1000h
JMP LOOP2
INC1:
ADD BX,2
CMP BX,100Ah
JNE LOOP1

ret
 