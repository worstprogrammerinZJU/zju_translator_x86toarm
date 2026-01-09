main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 368
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	mov	DWORD PTR -48[rbp], 0
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -368[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -368[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -8[rbp], 2
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 58
	je	.L69
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 46
	je	.L69
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 75
	jne	.L7
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -72[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -68[rbp], eax
	mov	DWORD PTR -16[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 107
	jne	.L8
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -200[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -196[rbp], eax
	mov	DWORD PTR -40[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 81
	jne	.L9
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -80[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -76[rbp], eax
	mov	DWORD PTR -20[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 113
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -208[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -204[rbp], eax
	mov	DWORD PTR -44[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 82
	jne	.L11
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	DWORD PTR -96[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	DWORD PTR -92[rbp+rax*8], edx
	add	DWORD PTR -24[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 114
	jne	.L12
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	mov	DWORD PTR -224[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	mov	DWORD PTR -220[rbp+rax*8], edx
	add	DWORD PTR -48[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 66
	jne	.L13
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	DWORD PTR -112[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	DWORD PTR -108[rbp+rax*8], edx
	add	DWORD PTR -28[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 98
	jne	.L14
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	DWORD PTR -240[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	DWORD PTR -236[rbp+rax*8], edx
	add	DWORD PTR -52[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 78
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	DWORD PTR -128[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	DWORD PTR -124[rbp+rax*8], edx
	add	DWORD PTR -32[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 110
	jne	.L16
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	mov	DWORD PTR -256[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	mov	DWORD PTR -252[rbp+rax*8], edx
	add	DWORD PTR -56[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 80
	jne	.L17
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	DWORD PTR -192[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	DWORD PTR -188[rbp+rax*8], edx
	add	DWORD PTR -36[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -368[rbp+rax]
	cmp	al, 112
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	mov	DWORD PTR -320[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	mov	DWORD PTR -316[rbp+rax*8], edx
	add	DWORD PTR -60[rbp], 1
	jmp	.L6
	nop
	add	DWORD PTR -8[rbp], 4
	cmp	DWORD PTR -8[rbp], 33
	jle	.L18
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 8
	jle	.L19
	cmp	DWORD PTR -24[rbp], 1
	jle	.L20
	mov	edx, DWORD PTR -92[rbp]
	mov	eax, DWORD PTR -84[rbp]
	cmp	edx, eax
	jle	.L21
	mov	eax, DWORD PTR -92[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -92[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -84[rbp], eax
	mov	eax, DWORD PTR -96[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	mov	DWORD PTR -96[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -88[rbp], eax
	jmp	.L20
	mov	edx, DWORD PTR -92[rbp]
	mov	eax, DWORD PTR -84[rbp]
	cmp	edx, eax
	jne	.L20
	mov	edx, DWORD PTR -96[rbp]
	mov	eax, DWORD PTR -88[rbp]
	cmp	edx, eax
	jle	.L20
	mov	eax, DWORD PTR -92[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -92[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -84[rbp], eax
	mov	eax, DWORD PTR -96[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	mov	DWORD PTR -96[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -88[rbp], eax
	cmp	DWORD PTR -28[rbp], 1
	jle	.L22
	mov	edx, DWORD PTR -108[rbp]
	mov	eax, DWORD PTR -100[rbp]
	cmp	edx, eax
	jle	.L23
	mov	eax, DWORD PTR -108[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	mov	DWORD PTR -108[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -100[rbp], eax
	mov	eax, DWORD PTR -112[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -104[rbp]
	mov	DWORD PTR -112[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -104[rbp], eax
	jmp	.L22
	mov	edx, DWORD PTR -108[rbp]
	mov	eax, DWORD PTR -100[rbp]
	cmp	edx, eax
	jne	.L22
	mov	edx, DWORD PTR -112[rbp]
	mov	eax, DWORD PTR -104[rbp]
	cmp	edx, eax
	jle	.L22
	mov	eax, DWORD PTR -108[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	mov	DWORD PTR -108[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -100[rbp], eax
	mov	eax, DWORD PTR -112[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -104[rbp]
	mov	DWORD PTR -112[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -104[rbp], eax
	cmp	DWORD PTR -32[rbp], 1
	jle	.L24
	mov	edx, DWORD PTR -124[rbp]
	mov	eax, DWORD PTR -116[rbp]
	cmp	edx, eax
	jle	.L25
	mov	eax, DWORD PTR -124[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -116[rbp]
	mov	DWORD PTR -124[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -116[rbp], eax
	mov	eax, DWORD PTR -128[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -120[rbp]
	mov	DWORD PTR -128[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -120[rbp], eax
	jmp	.L24
	mov	edx, DWORD PTR -124[rbp]
	mov	eax, DWORD PTR -116[rbp]
	cmp	edx, eax
	jne	.L24
	mov	edx, DWORD PTR -128[rbp]
	mov	eax, DWORD PTR -120[rbp]
	cmp	edx, eax
	jle	.L24
	mov	eax, DWORD PTR -124[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -116[rbp]
	mov	DWORD PTR -124[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -116[rbp], eax
	mov	eax, DWORD PTR -128[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -120[rbp]
	mov	DWORD PTR -128[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -120[rbp], eax
	cmp	DWORD PTR -48[rbp], 1
	jle	.L26
	mov	edx, DWORD PTR -220[rbp]
	mov	eax, DWORD PTR -212[rbp]
	cmp	edx, eax
	jge	.L27
	mov	eax, DWORD PTR -220[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -212[rbp]
	mov	DWORD PTR -220[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -212[rbp], eax
	mov	eax, DWORD PTR -224[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -224[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -216[rbp], eax
	jmp	.L26
	mov	edx, DWORD PTR -220[rbp]
	mov	eax, DWORD PTR -212[rbp]
	cmp	edx, eax
	jne	.L26
	mov	edx, DWORD PTR -224[rbp]
	mov	eax, DWORD PTR -216[rbp]
	cmp	edx, eax
	jle	.L26
	mov	eax, DWORD PTR -220[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -212[rbp]
	mov	DWORD PTR -220[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -212[rbp], eax
	mov	eax, DWORD PTR -224[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -224[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -216[rbp], eax
	cmp	DWORD PTR -52[rbp], 1
	jle	.L28
	mov	edx, DWORD PTR -236[rbp]
	mov	eax, DWORD PTR -228[rbp]
	cmp	edx, eax
	jge	.L29
	mov	eax, DWORD PTR -236[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -228[rbp]
	mov	DWORD PTR -236[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -228[rbp], eax
	mov	eax, DWORD PTR -240[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -232[rbp]
	mov	DWORD PTR -240[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -232[rbp], eax
	jmp	.L28
	mov	edx, DWORD PTR -236[rbp]
	mov	eax, DWORD PTR -228[rbp]
	cmp	edx, eax
	jne	.L28
	mov	edx, DWORD PTR -240[rbp]
	mov	eax, DWORD PTR -232[rbp]
	cmp	edx, eax
	jle	.L28
	mov	eax, DWORD PTR -236[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -228[rbp]
	mov	DWORD PTR -236[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -228[rbp], eax
	mov	eax, DWORD PTR -240[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -232[rbp]
	mov	DWORD PTR -240[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -232[rbp], eax
	cmp	DWORD PTR -56[rbp], 1
	jle	.L30
	mov	edx, DWORD PTR -252[rbp]
	mov	eax, DWORD PTR -244[rbp]
	cmp	edx, eax
	jge	.L31
	mov	eax, DWORD PTR -252[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -244[rbp]
	mov	DWORD PTR -252[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -244[rbp], eax
	mov	eax, DWORD PTR -256[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -248[rbp]
	mov	DWORD PTR -256[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -248[rbp], eax
	jmp	.L30
	mov	edx, DWORD PTR -252[rbp]
	mov	eax, DWORD PTR -244[rbp]
	cmp	edx, eax
	jne	.L30
	mov	edx, DWORD PTR -256[rbp]
	mov	eax, DWORD PTR -248[rbp]
	cmp	edx, eax
	jle	.L30
	mov	eax, DWORD PTR -252[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -244[rbp]
	mov	DWORD PTR -252[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -244[rbp], eax
	mov	eax, DWORD PTR -256[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -248[rbp]
	mov	DWORD PTR -256[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -248[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L32
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L33
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -188[rbp+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -188[rbp+rax*8]
	cmp	edx, eax
	jle	.L34
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -188[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -188[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -188[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -188[rbp+rax*8], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -192[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -192[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -192[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -192[rbp+rax*8], edx
	jmp	.L35
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -188[rbp+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -188[rbp+rax*8]
	cmp	edx, eax
	jne	.L35
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -192[rbp+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -192[rbp+rax*8]
	cmp	edx, eax
	jle	.L35
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -188[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -188[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -188[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -188[rbp+rax*8], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -192[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -192[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -192[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -192[rbp+rax*8], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L36
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L37
	mov	DWORD PTR -8[rbp], 0
	jmp	.L38
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L39
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -316[rbp+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -316[rbp+rax*8]
	cmp	edx, eax
	jge	.L40
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -316[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -316[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -316[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -316[rbp+rax*8], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -320[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -320[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -320[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -320[rbp+rax*8], edx
	jmp	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -316[rbp+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -316[rbp+rax*8]
	cmp	edx, eax
	jne	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -320[rbp+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -320[rbp+rax*8]
	cmp	edx, eax
	jle	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -316[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -316[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -316[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -316[rbp+rax*8], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -320[rbp+rax*8]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -320[rbp+rax*8]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -320[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR -320[rbp+rax*8], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L42
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L43
	lea	rax, -368[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L44
	mov	eax, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -72[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L45
	mov	DWORD PTR -8[rbp], 0
	jmp	.L46
	mov	eax, DWORD PTR -76[rbp]
	mov	edx, DWORD PTR -80[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L47
	mov	DWORD PTR -8[rbp], 0
	jmp	.L48
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -92[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -96[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L49
	mov	DWORD PTR -8[rbp], 0
	jmp	.L50
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -108[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -112[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L51
	mov	DWORD PTR -8[rbp], 0
	jmp	.L52
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -124[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -128[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L53
	mov	DWORD PTR -8[rbp], 0
	jmp	.L54
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -188[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -192[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L55
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L56
	mov	eax, DWORD PTR -196[rbp]
	mov	edx, DWORD PTR -200[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L57
	mov	DWORD PTR -8[rbp], 0
	jmp	.L58
	mov	eax, DWORD PTR -204[rbp]
	mov	edx, DWORD PTR -208[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L59
	mov	DWORD PTR -8[rbp], 0
	jmp	.L60
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -220[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -224[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jl	.L61
	mov	DWORD PTR -8[rbp], 0
	jmp	.L62
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -236[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -240[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jl	.L63
	mov	DWORD PTR -8[rbp], 0
	jmp	.L64
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -252[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -256[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jl	.L65
	mov	DWORD PTR -8[rbp], 0
	jmp	.L66
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -316[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -320[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L67
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: