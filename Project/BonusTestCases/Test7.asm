ADDI $s0, $zero, 5
ADDI $s1, $zero, 10
ADDI $s2, $zero, 15
ADD $s3, $s0, $s1
SUB $s3, $s3, $s2

ADDI $t0, $zero, 10

BLE $s3, $zero, ELIF
BLT $s0, $t0, IF
BGE $s1, $t0, ELIF

IF: ADDI $s3, $zero, 1
J FINISH

ELIF: BGE $s3, $zero, ELSE
ADDI $s3, $zero, -1
J FINISH

ELSE:
MOVE $s0, $zero
MOVE $s1, $zero
MOVE $s2, $zero

FINISH:

// final result shoudl have $s0, $s1 and $s2 to have values of zero