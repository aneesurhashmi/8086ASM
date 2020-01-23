.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 0DH, 0AH, "ENTER THE FIRST CAHRACTER: $"
    MSG2 DB 0DH, 0AH, "ENTER THE SECOND CHARATER: $"
.CODE 
    MAIN PROC

        MOV AX, @DATA;
        MOV DS, AX;
    
    again: ; label
        LEA DX, MSG1;
        MOV AH, 09H;
        INT 21H;

        MOV AH, 01H;
        INT 21H;

        LEA DX, MSG2;
        MOV AH, 09H;
        INT 21H;
        
        MOV AH, 01H;
        INT 21H;

        JMP again; jump to the first instruction

        MOV AH, 4CH;
        INT 21H;

    MAIN ENDP
END MAIN