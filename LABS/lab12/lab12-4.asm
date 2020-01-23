.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC
    ;8 BIT DIVISION
;        MOV AX, 0400H;
;        MOV CL, 0006H;
;        DIV CL;


    ;16 BIT DIVISION
        MOV DX, 0023H
        MOV AX, 0004H;
        MOV CX, 0300H;

        DIV CX;

        MOV AH, 4CH;
        INT 21H
    MAIN ENDP
END MAIN