.MODEL SMALL
.STACK 100H
;DATA SEG NOT REQUIRED
.CODE 
    MAIN PROC
        MOV AX, 0B386H;
        MOV BX, 0200H;
        MOV CX, 0A5CH;
        MOV DX, 0D659H;
        
        MOV BP, 0300H;
        MOV ES, CX;
        MOV WORD PTR DS:[02000H], 095D8H;

        ADD AX, BX;

        PUSH AX;
        PUSH WORD PTR[BX];
        PUSH ES;
        PUSHF;
        PUSH DX;
        POP CX;
        POP DI;
        POP ES;
        POP WORD PTR[BP];
        POPF

        MOV AH, 4CH;
        INT 21H;

    MAIN ENDP
END MAIN