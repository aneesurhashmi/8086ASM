.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
    ; 8-BIT MULTIPLICATION

    ; 16-BIT MULTIPLICATION
        MOV AX, 0FFH;
        MOV CL, 0006H;
        MUL CL

        MOV AH, 4CH;
        INT 21H
    MAIN ENDP
END MAIN