main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 256
	mov	QWORD PTR -144[rbp], 0
	mov	QWORD PTR -136[rbp], 0
	mov	QWORD PTR -128[rbp], 0
	mov	QWORD PTR -120[rbp], 0
	mov	QWORD PTR -112[rbp], 0
	mov	QWORD PTR -104[rbp], 0
	mov	QWORD PTR -96[rbp], 0
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	BYTE PTR -95[rbp], 96
	mov	BYTE PTR -94[rbp], 49
	mov	BYTE PTR -93[rbp], 50
	mov	BYTE PTR -92[rbp], 51
	mov	BYTE PTR -91[rbp], 52
	mov	BYTE PTR -90[rbp], 53
	mov	BYTE PTR -89[rbp], 54
	mov	BYTE PTR -88[rbp], 55
	mov	BYTE PTR -87[rbp], 56
	mov	BYTE PTR -96[rbp], 57
	mov	BYTE PTR -99[rbp], 48
	mov	BYTE PTR -83[rbp], 45
	mov	BYTE PTR -57[rbp], 81
	mov	BYTE PTR -75[rbp], 87
	mov	BYTE PTR -62[rbp], 69
	mov	BYTE PTR -60[rbp], 82
	mov	BYTE PTR -55[rbp], 84
	mov	BYTE PTR -59[rbp], 89
	mov	BYTE PTR -71[rbp], 85
	mov	BYTE PTR -65[rbp], 73
	mov	BYTE PTR -64[rbp], 79
	mov	BYTE PTR -53[rbp], 80
	mov	BYTE PTR -51[rbp], 91
	mov	BYTE PTR -52[rbp], 93
	mov	BYTE PTR -61[rbp], 65
	mov	BYTE PTR -76[rbp], 83
	mov	BYTE PTR -74[rbp], 68
	mov	BYTE PTR -73[rbp], 70
	mov	BYTE PTR -72[rbp], 71
	mov	BYTE PTR -70[rbp], 72
	mov	BYTE PTR -69[rbp], 74
	mov	BYTE PTR -68[rbp], 75
	mov	BYTE PTR -85[rbp], 76
	mov	BYTE PTR -105[rbp], 59
	mov	BYTE PTR -56[rbp], 90
	mov	BYTE PTR -77[rbp], 88
	mov	BYTE PTR -58[rbp], 67
	mov	BYTE PTR -78[rbp], 86
	mov	BYTE PTR -66[rbp], 66
	mov	BYTE PTR -67[rbp], 78
	mov	BYTE PTR -100[rbp], 77
	mov	BYTE PTR -98[rbp], 44
	mov	BYTE PTR -97[rbp], 46
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -256[rbp+rax]
	movsx	eax, al
	cdqe
	movzx	eax, BYTE PTR -144[rbp+rax]
	test	al, al
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -256[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -256[rbp+rax]
	movsx	eax, al
	cdqe
	movzx	eax, BYTE PTR -144[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -256[rbp+rax]
	test	al, al
	jne	.L6
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -256[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: