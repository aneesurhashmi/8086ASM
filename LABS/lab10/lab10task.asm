; MULTIPLY TWO 8-BIT NUMBERS
.MODEL SMALL
.STACK 100H
.DATA

.CODE 
    MAIN PROC
;        MOV AX, 0020H;
        MOV CL, 4;
        MOV BX, 12H;
        SHL BX, CL;


        MOV AH, 4CH;
        INT 21H

    MAIN ENDP
END MAIN