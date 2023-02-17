ADDI $s0, $zero, 4042322161
ADDI $s1, $zero, 252645135

ADD $s2, $s1, $s0

// $s2 should have 00000000000000000000000000000000, cflag = 1, zflag = 1, oflag = 0