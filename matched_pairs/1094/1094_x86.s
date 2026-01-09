m:
n:
rear:
sort:
letter:
top:
sorted:
_Z9in_degreev:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], -1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, top[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	je	.L12
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, letter[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, top[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	je	.L13
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L4
	cmp	DWORD PTR -4[rbp], -1
	jne	.L9
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	BYTE PTR sorted[rip], 1
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L10
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L15
	mov	edx, 676
	mov	esi, 0
	lea	rax, letter[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	BYTE PTR -9[rbp], 0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L16
	lea	rax, -26[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -9[rbp]
	cmp	eax, 1
	je	.L29
	movzx	eax, BYTE PTR -26[rbp]
	movsx	eax, al
	lea	edx, -65[rax]
	movzx	eax, BYTE PTR -24[rbp]
	movsx	eax, al
	sub	eax, 65
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, letter[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	edx, 26
	mov	esi, 0
	lea	rax, top[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	BYTE PTR sorted[rip], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	call	_Z9in_degreev
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -16[rbp], -1
	sete	al
	test	al, al
	je	.L20
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	BYTE PTR -9[rbp], 1
	jmp	.L21
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, top[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 65
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, sort[rip]
	mov	BYTE PTR [rax+rdx], cl
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L18
	movzx	eax, BYTE PTR sorted[rip]
	movzx	eax, al
	test	eax, eax
	jne	.L18
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, sort[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, sort[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	BYTE PTR -9[rbp], 1
	jmp	.L18
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L23
	movzx	eax, BYTE PTR -9[rbp]
	test	eax, eax
	jne	.L15
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	je	.L25
	mov	eax, 1
	jmp	.L26
	mov	eax, 0
	test	al, al
	jne	.L27
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: