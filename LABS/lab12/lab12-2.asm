.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
        MOV AX, 4000H
        MOV BX, 0006H;
        MOV CX, 8;
    agian:
        SBB AX, BX;
        LOOP agian
        
        MOV AH, 4CH;
        INT 21H
    MAIN ENDP
END MAIN