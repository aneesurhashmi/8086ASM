.MODEL MEDIUM
.STACK 100H
    
.CODE FIRSTC
    MAIN PROC
        MOV AX, 1111H;
        MOV BX, 2222H;
        MOV CX, 3303H;b
        
        MOV SI, 9254H;
        
        MOV WORD PTR DS:[0100H], 06655H;
        MOV BYTE PTR DS:[0123H], 077H;
        MOV WORD PTR DS:[0126H], 09988H;
        
        ROL AX, 01H;
        ROL BYTE PTR DS:[0100H],01H;
        
        ROL AX, 1;
        ROL AX, 1;
        ROL AX, 1;

        ROL BYTE PTR DS:[0100H], CL;
        RCL BX, 01H;
        RCL WORD PTR DS:[0100H],01H;
        RCL AX, CL;
        RCL WORD PTR DS:[0100H], CL;
        ROR AX, 01H;
        ROR AX, CL;

        ROR BYTE PTR DS:[0126H], CL;
        RCR BX, 1;
        RCR BYTE PTR DS:[0127H], CL;
        SHL BX, 01H;
        SHL BYTE PTR DS:[0126H], CL;
        SAR SI, 01H;
        SAR SI, CL;
        SHR BYTE PTR DS:[0123H], 01H;
        SHR BYTE PTR DS:[0123H], CL;

        MOV AH, 04CH;
        INT 21H; 

    MAIN ENDP
END MAIN