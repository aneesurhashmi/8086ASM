.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 0DH, 0AH, "PLEASE PRESS ANY KEY $"
    NM DB 0DH, 0AH, "ANEES HASHMI $"
.CODE
    MAIN PROC
        MOV AX, @DATA;
        MOV DS, AX;
    tryagain:
        MOV AH, 09H;
        LEA DX, MSG;
        INT 21H;

        MOV AH, 01H;
        INT 21H;

        CMP AL, 020H;
        JNZ tryagain;
        
;        MOV DX, 00000H;

        MOV AH, 09H;
        LEA DX, NM;
        INT 21H;

        MOV AH, 04CH;
        INT 21H

    MAIN ENDP
END MAIN