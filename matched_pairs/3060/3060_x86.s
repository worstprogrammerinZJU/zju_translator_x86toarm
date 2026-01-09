same:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3952
	lea	rax, -8036[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -4016[rbp]
	mov	edx, 4000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -8016[rbp]
	mov	edx, 4000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 4000000
	mov	esi, 0
	lea	rax, same[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rdx, -8032[rbp]
	lea	rax, -8028[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -8024[rbp]
	lea	rax, -8020[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8020[rbp]
	add	eax, 1000000000
	mov	DWORD PTR -8020[rbp], eax
	mov	eax, DWORD PTR -8024[rbp]
	add	eax, 1000000000
	mov	DWORD PTR -8024[rbp], eax
	mov	eax, DWORD PTR -8020[rbp]
	mov	ecx, DWORD PTR -8028[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR -8020[rbp], eax
	mov	eax, DWORD PTR -8024[rbp]
	mov	ecx, DWORD PTR -8028[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR -8024[rbp], eax
	mov	eax, DWORD PTR -8020[rbp]
	mov	edx, DWORD PTR -8024[rbp]
	movsx	rsi, edx
	movsx	rcx, eax
	imul	rcx, rcx, 1000
	add	rcx, rsi
	lea	rsi, 0[0+rcx*4]
	lea	rcx, same[rip]
	mov	ecx, DWORD PTR [rsi+rcx]
	add	ecx, 1
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, same[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8020[rbp]
	movsx	rdx, eax
	mov	edx, DWORD PTR -4016[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
	mov	eax, DWORD PTR -8024[rbp]
	movsx	rdx, eax
	mov	edx, DWORD PTR -8016[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -8016[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8032[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -8032[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -8016[rbp+rax*4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, same[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -8020[rbp], eax
	mov	eax, DWORD PTR -8020[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -8020[rbp]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8028[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L8
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8028[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8036[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: