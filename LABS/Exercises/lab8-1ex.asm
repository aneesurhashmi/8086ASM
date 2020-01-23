EXTERN ADDP:NEAR
.MODEL SMALL
.STACK 100H
.DATA 
    MSG1 DB 0DH,0AH, "ENTER FIRST NUMBER $"
    MSG2 DB 0DH, 0AH, "ENTER SECOND NUMBER $"
    ANS DB 0DH, 0AH, "?"
    MSG3 DB 0DH, 0AH, "ANSWER: $"
.CODE 
    MAIN PROC
        MOV AX, @DATA;
        MOV DS,AX;

        MOV AL,00H

        MOV AH, 09H; DISPLAY MSG
        LEA DX, MSG1;
        INT 21H;

        MOV AH, 01H; FIRST NUM INPUT
        INT 21H;
        
        MOV BL, AL;
            
        MOV AH, 09H; DISPLAY MSG
        LEA DX, MSG2;
        INT 21H;

        MOV AH, 01H; SECOND NUM INPUT
        INT 21H;

        CALL ADDP

        MOV AH, 4CH;
        INT 21H

    MAIN ENDP
END MAIN