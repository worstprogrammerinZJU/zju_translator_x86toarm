zuhe:
letter:
n:
k:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rdx, rax
	lea	rax, k[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, letter[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	call	getchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 1
	mov	rsi, rax
	lea	rax, letter[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	edi, 0
	call	make
	mov	eax, 0
	leave
	ret
equal:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -24[rbp], eax
	jg	.L7
	mov	eax, 0
	jmp	.L8
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L9
	mov	eax, 1
	pop	rbp
	ret
make:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L11
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 97
	je	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 101
	je	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 105
	je	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 111
	je	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 117
	jne	.L14
	mov	DWORD PTR -8[rbp], 1
	jmp	.L15
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	cmp	DWORD PTR -8[rbp], 1
	jne	.L24
	cmp	DWORD PTR -12[rbp], 1
	jle	.L24
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cdqe
	lea	rdx, letter[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L19
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L24
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L21
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	equal
	cmp	eax, 1
	jne	.L22
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, zuhe[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	make
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L23
	jmp	.L10
	nop
	leave
	ret
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -1[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -2[rbp], al
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, BYTE PTR -2[rbp]
	jge	.L26
	mov	eax, -1
	jmp	.L27
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, BYTE PTR -2[rbp]
	jle	.L28
	mov	eax, 1
	jmp	.L27
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: