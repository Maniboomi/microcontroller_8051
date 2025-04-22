ORG 0000H

MAIN:
    MOV TMOD, #01H     

AGAIN:
   
    MOV P1, #0FFH
    ACALL DELAY_1S
    ACALL DELAY_1S
    ACALL DELAY_1S
    ACALL DELAY_1S
    ACALL DELAY_1S

	MOV P1, #00H
    ACALL DELAY_1S
    ACALL DELAY_1S
    ACALL DELAY_1S
    ACALL DELAY_1S
    ACALL DELAY_1S

    SJMP AGAIN
	
DELAY_1S:
    MOV R2, #15

DELAY:
    MOV TH0, #00H         
    MOV TL0, #00H
    SETB TR0            

WAIT:
    JNB TF0, WAIT         
    CLR TF0             
    CLR TR0             
    DJNZ R2, DELAY        
    RET

END
