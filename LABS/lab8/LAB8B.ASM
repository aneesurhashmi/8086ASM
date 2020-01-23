PUBLIC CONVERT
.MODEL SMALL
.DATA
    MSG DB 0DH, 0AH, "IN UPPER CASE IT IS "
    CHAR DB -20H, "$"

.CODE
    CONVERT PROC NEAR
        PUSH BX;
        PUSH DX;
        ADD CHAR, AL;
        MOV AH,09H;
        LEA DX, MSG;
        INT 21H;
        POP DX;
        POP BX;
        RET

    CONVERT ENDP
END