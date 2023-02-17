ADDI $s0, $zero, 858993460
ADDI $s1, $zero, 1288490188

SUB $s2, $s1, $s0

// $s2 should have 11100110011001100110011001100110, cflag = 1, zflag = 0, oflag = 1