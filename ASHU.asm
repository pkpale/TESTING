LDA 1000H
MOV B,A
DCR B
MOV C,B
L_P2: LXI H,1000H
LXI D,1001H
L_P1: INX H
INX D
MOV A,M
PUSH PSW
XCHG
CMP M
;jdfksjdfj
XCHG
JC NOT_SWAPPING
XCHG
MOV A,M
XCHG
MOV M,A
XCHG
POP PSW
MOV M,A
XCHG
NOT_SWAPPING: DCR B
JNZ L_P1
DCR C
MVI A,00H
MOV B,C
ADD C
MOV C,A
JNZ L_P2
HLT
