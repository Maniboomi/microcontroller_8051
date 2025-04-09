ORG 0000H      ; Set origin to 0000H

START: 
    SETB P1.0  ; Turn ON LED (P1.0 = 1)
    CALL DELAY ; Call delay function
    CLR P1.0   ; Turn OFF LED (P1.0 = 0)
    CALL DELAY ; Call delay function
    SJMP START ; Repeat forever

DELAY: 
    MOV R6, #255  ; Load R6 with 255
D1: MOV R7, #255  ; Load R7 with 255
D2: DJNZ R7, D2   ; Decrement R7 until it reaches 0
    DJNZ R6, D1   ; Decrement R6 until it reaches 0
    RET           ; Return from subroutine