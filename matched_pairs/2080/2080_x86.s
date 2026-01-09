leap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 3
	test	eax, eax
	jne	.L2
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 5
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L3
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 7
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 400
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L2
	mov	eax, 1
	jmp	.L4
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 320
	mov	DWORD PTR -64[rbp], 0
	mov	DWORD PTR -60[rbp], 31
	mov	DWORD PTR -56[rbp], 28
	mov	DWORD PTR -52[rbp], 31
	mov	DWORD PTR -48[rbp], 30
	mov	DWORD PTR -44[rbp], 31
	mov	DWORD PTR -40[rbp], 30
	mov	DWORD PTR -36[rbp], 31
	mov	DWORD PTR -32[rbp], 31
	mov	DWORD PTR -28[rbp], 30
	mov	DWORD PTR -24[rbp], 31
	mov	DWORD PTR -20[rbp], 30
	mov	DWORD PTR -112[rbp], 0
	mov	DWORD PTR -108[rbp], 31
	mov	DWORD PTR -104[rbp], 29
	mov	DWORD PTR -100[rbp], 31
	mov	DWORD PTR -96[rbp], 30
	mov	DWORD PTR -92[rbp], 31
	mov	DWORD PTR -88[rbp], 30
	mov	DWORD PTR -84[rbp], 31
	mov	DWORD PTR -80[rbp], 31
	mov	DWORD PTR -76[rbp], 30
	mov	DWORD PTR -72[rbp], 31
	mov	DWORD PTR -68[rbp], 30
	movabs	rax, 8746382394089824595
	mov	QWORD PTR -224[rbp], rax
	mov	DWORD PTR -216[rbp], 0
	mov	WORD PTR -212[rbp], 0
	mov	BYTE PTR -210[rbp], 0
	movabs	rax, 133459203749203
	mov	QWORD PTR -209[rbp], rax
	mov	DWORD PTR -201[rbp], 0
	mov	WORD PTR -197[rbp], 0
	mov	BYTE PTR -195[rbp], 0
	movabs	rax, 133459203747661
	mov	QWORD PTR -194[rbp], rax
	mov	DWORD PTR -186[rbp], 0
	mov	WORD PTR -182[rbp], 0
	mov	BYTE PTR -180[rbp], 0
	movabs	rax, 34165556242642260
	mov	QWORD PTR -179[rbp], rax
	mov	DWORD PTR -171[rbp], 0
	mov	WORD PTR -167[rbp], 0
	mov	BYTE PTR -165[rbp], 0
	movabs	rax, 7017860998831039831
	mov	QWORD PTR -164[rbp], rax
	mov	DWORD PTR -156[rbp], 121
	mov	WORD PTR -152[rbp], 0
	mov	BYTE PTR -150[rbp], 0
	movabs	rax, 8746382398334527572
	mov	QWORD PTR -149[rbp], rax
	mov	DWORD PTR -141[rbp], 0
	mov	WORD PTR -137[rbp], 0
	mov	BYTE PTR -135[rbp], 0
	movabs	rax, 133459203420742
	mov	QWORD PTR -134[rbp], rax
	mov	DWORD PTR -126[rbp], 0
	mov	WORD PTR -122[rbp], 0
	mov	BYTE PTR -120[rbp], 0
	mov	WORD PTR -320[rbp], 12336
	mov	BYTE PTR -318[rbp], 0
	mov	WORD PTR -317[rbp], 12592
	mov	BYTE PTR -315[rbp], 0
	mov	WORD PTR -314[rbp], 12848
	mov	BYTE PTR -312[rbp], 0
	mov	WORD PTR -311[rbp], 13104
	mov	BYTE PTR -309[rbp], 0
	mov	WORD PTR -308[rbp], 13360
	mov	BYTE PTR -306[rbp], 0
	mov	WORD PTR -305[rbp], 13616
	mov	BYTE PTR -303[rbp], 0
	mov	WORD PTR -302[rbp], 13872
	mov	BYTE PTR -300[rbp], 0
	mov	WORD PTR -299[rbp], 14128
	mov	BYTE PTR -297[rbp], 0
	mov	WORD PTR -296[rbp], 14384
	mov	BYTE PTR -294[rbp], 0
	mov	WORD PTR -293[rbp], 14640
	mov	BYTE PTR -291[rbp], 0
	mov	WORD PTR -290[rbp], 12337
	mov	BYTE PTR -288[rbp], 0
	mov	WORD PTR -287[rbp], 12593
	mov	BYTE PTR -285[rbp], 0
	mov	WORD PTR -284[rbp], 12849
	mov	BYTE PTR -282[rbp], 0
	mov	WORD PTR -281[rbp], 13105
	mov	BYTE PTR -279[rbp], 0
	mov	WORD PTR -278[rbp], 13361
	mov	BYTE PTR -276[rbp], 0
	mov	WORD PTR -275[rbp], 13617
	mov	BYTE PTR -273[rbp], 0
	mov	WORD PTR -272[rbp], 13873
	mov	BYTE PTR -270[rbp], 0
	mov	WORD PTR -269[rbp], 14129
	mov	BYTE PTR -267[rbp], 0
	mov	WORD PTR -266[rbp], 14385
	mov	BYTE PTR -264[rbp], 0
	mov	WORD PTR -263[rbp], 14641
	mov	BYTE PTR -261[rbp], 0
	mov	WORD PTR -260[rbp], 12338
	mov	BYTE PTR -258[rbp], 0
	mov	WORD PTR -257[rbp], 12594
	mov	BYTE PTR -255[rbp], 0
	mov	WORD PTR -254[rbp], 12850
	mov	BYTE PTR -252[rbp], 0
	mov	WORD PTR -251[rbp], 13106
	mov	BYTE PTR -249[rbp], 0
	mov	WORD PTR -248[rbp], 13362
	mov	BYTE PTR -246[rbp], 0
	mov	WORD PTR -245[rbp], 13618
	mov	BYTE PTR -243[rbp], 0
	mov	WORD PTR -242[rbp], 13874
	mov	BYTE PTR -240[rbp], 0
	mov	WORD PTR -239[rbp], 14130
	mov	BYTE PTR -237[rbp], 0
	mov	WORD PTR -236[rbp], 14386
	mov	BYTE PTR -234[rbp], 0
	mov	WORD PTR -233[rbp], 14642
	mov	BYTE PTR -231[rbp], 0
	mov	WORD PTR -230[rbp], 12339
	mov	BYTE PTR -228[rbp], 0
	mov	WORD PTR -227[rbp], 12595
	mov	BYTE PTR -225[rbp], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	sar	edx, 2
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -12[rbp], edx
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, ecx
	sal	edx, 3
	sub	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], 2000
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	leap
	lea	edx, 365[rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	leap
	lea	edx, 364[rax]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jl	.L8
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	leap
	test	eax, eax
	je	.L9
	mov	DWORD PTR -8[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -112[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jge	.L22
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -112[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 11
	jle	.L14
	jmp	.L15
	mov	DWORD PTR -8[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jge	.L23
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -64[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 11
	jle	.L19
	jmp	.L15
	nop
	jmp	.L15
	nop
	lea	rcx, -224[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	lea	rsi, [rcx+rax]
	mov	eax, DWORD PTR -16[rbp]
	lea	rcx, -320[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rcx, rax
	lea	rdi, -320[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rdi+rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	r8, rsi
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: