ADDI $s0, $zero, 65535
ADDI $s1, $zero, 1

ADD $s2, $s1, $s0

// $s2 should have 00000000000000010000000000000000, cflag = 0, zflag = 0, oflag = 0