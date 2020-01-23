.MODEL SMALL
.STACK 100H
.DATA

    MSG1 DB 0DH, 0AH, "ENTER THE FIST CHARACTER: $"
    MSG2 DB 0DH, 0AH, "THE FIRST CHARACTER IS: "
    CH1 DB ?,"$"
    MSG3 DB 0DH, 0AH, "ENTER THE SECOND CHARACTER:  $"
    MSG4 DB 0DH, 0AH, "THE SECOND CHARACTER IS: "
    CH2 DB ?,"$"  

.CODE 
    MAIN PROC
        MOV AX, @DATA;
        MOV DS, AX;

    again:
        LEA DX, MSG1;    
        MOV AH, 09H;
        INT 21H;

        MOV AH,1; 1ST CHAR INPUT IN AL
        INT 21H;

        MOV CH1, AL; SAVING FIST CHAR IN CH1
        
        MOV BX, 0000H;
        MOV BL, AL;
        
        LEA DX, MSG2; DISPLAYING 1ST CHAR WITH MSG2
        MOV AH, 09H;
        INT 21H;

        LEA DX, MSG3; 2ND CHAR PROMPT MSG
        MOV AH, 09H;
        INT 21H;

        MOV AH, 01H; 2ND CHAR INPUT IN AL
        INT 21H;

        MOV CH2, AL; SAVING 2ND CHAR TO CH2

        LEA DX, MSG4; DISPLAY CHAR 2 WITH MSG4
        MOV AH, 09H;
        INT 21H;

        MOV AH, 00H; CLEARING UPPER BITS OF AX
        MOV AL, CH2;
        
        CMP AX, BX; COMPARE AX AND BX AND SET FLAGS ACCORDINGLY
        JNZ again; IF ZF != 0 => JUMP TO again LABEL

        MOV AH, 4CH; EXIT
        INT 21H;
            
    MAIN ENDP
END MAIN