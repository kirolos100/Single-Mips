ADDI $s0, $zero, 8
ADDI $s1, $zero, 1

SUB $s2, $s1, $s0

// $s2 should have 00000000000000000000000000000111, cflag = 0, zflag = 0, oflag = 0