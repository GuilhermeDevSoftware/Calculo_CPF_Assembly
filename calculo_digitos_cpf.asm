        MOV 20h, #4
        MOV 21h, #8
        MOV 22h, #2
        MOV 23h, #9
        MOV 24h, #5
        MOV 25h, #8
        MOV 26h, #8
        MOV 27h, #3
        MOV 28h, #8

        MOV R0, #20h
        MOV R1, #0
        MOV R2, #9
        MOV B, #10

LOOP1:
        MOV A, @R0
        MUL AB

        ADD A, R1
        MOV R1, A

        INC R0
        DEC B

        DJNZ R2, LOOP1

        MOV A, R1
        MOV B, #11
        DIV AB

        MOV A, B

        CJNE A, #2, DV1_CHECK
DV1_ZERO:
        MOV A, #0
        SJMP DV1_SAVE

DV1_CHECK:
        JC DV1_ZERO

        MOV B, A
        MOV A, #11
        CLR C
        SUBB A, B

DV1_SAVE:
        MOV 29h, A
        MOV R0, #20h
        MOV R1, #0
        MOV R2, #10  
        MOV B, #11

LOOP2:
        MOV A, @R0
        MUL AB

        ADD A, R1
        MOV R1, A

        INC R0
        DEC B

        DJNZ R2, LOOP2

        MOV A, R1
        MOV B, #11
        DIV AB

        MOV A, B

        CJNE A, #2, DV2_CHECK
DV2_ZERO:
        MOV A, #0
        SJMP DV2_SAVE

DV2_CHECK:
        JC DV2_ZERO

        MOV B, A
        MOV A, #11
        CLR C
        SUBB A, B

DV2_SAVE:
        MOV 2Ah, A   

FIM:
        SJMP FIM

		
