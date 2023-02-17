ADDI $s0, $zero, 5
ADDI $s1, $zero, 5
ADD $s2, $s1, $s0

ADDI $s3, $zero, 15

BNE $s2, $s1, C2_CHECK
J C1_BODY

C2_CHECK: BNE $s2, $s0, C3_CHECK
J C2_BODY

C3_CHECK: BNE $s2, $s3, NEXT
J C3_BODY

C1_BODY: 
ADDI $s2, $zero, 1

C2_BODY:
ADDI $s2, $zero, 2
J NEXT

C3_BODY:
ADDI $s2, $zero, 3

NEXT:
ADDI $s4, $zero, 1
ADDI $s5, $zero, 2

BEQ $s2, $s4, SECOND_CHECK
BNE $s2, $s4, FINISH
SECOND_CHECK: BNE $s0, $s1, FINISH
ADDI $s0, $s2, -1

FINISH:

// final result should have $s2 = 2 and $s0 = 1