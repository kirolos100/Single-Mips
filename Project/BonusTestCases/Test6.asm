ADDI $s0, $zero, 5
ADDI $s1, $zero, 15
ADDI $s2, $zero, 4
ADDI $s3, $zero, -4
ADDI $s4, $zero, 10

BEQ $s0, $s2, IF_BODY
BNE $s0, $s3, ELSE
IF_BODY: ADDI $s0, $s0, 6
J NEXT

ELSE: ADDI $s0, $zero, 7

NEXT:
BEQ $s1, $s4, FINISH
ADDI $s1, $s1, -1
J NEXT

FINISH:

// final result should have $s0 have 7 value and $s1 have 10 value