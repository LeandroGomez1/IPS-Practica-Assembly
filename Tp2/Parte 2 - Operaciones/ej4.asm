.data 0x10000000
	num: .word 0xff0f1235
.text
	main: 	lw $s0, num			#1111 1111 0000 1111 0001 0010 0011 0101 = 0xff0f1235
		xori $s1, $s0, 0x288		#0000 0000 0000 0000 0000 0010 1000 1000 = 0x288
						#1111 1111 0000 1111 0001 0000 1011 1101 = 0xff0f10bd
		#Exit
		li $v0, 10
		syscall