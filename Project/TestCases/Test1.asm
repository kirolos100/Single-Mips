ADDI $s0, $zero, 858993459
ADDI $s1, $zero, 3435973836

AND $s2, $s1, $s0

// $s2 should have 00000000000000000000000000000000, cflag = 0, zflag = 1, oflag = 0