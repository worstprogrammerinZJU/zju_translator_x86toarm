n:
count:
flag:
G:
_Z3dfsi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR count[rip]
	add	eax, 1
	mov	DWORD PTR count[rip], eax
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L3
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edi, eax
	call	_Z3dfsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L4
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
	mov	edx, 800
	mov	esi, 0
	lea	rax, G[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -12[rbp], 0
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L7
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, G[rip]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, G[rip]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	call	getchar@PLT
	cmp	eax, 32
	sete	al
	test	al, al
	jne	.L9
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L8
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	edx, 100
	mov	esi, 0
	lea	rax, flag[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	DWORD PTR count[rip], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	je	.L20
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L15
	jmp	.L14
	nop
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	_Z3dfsi
	mov	eax, DWORD PTR n[rip]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR count[rip]
	cmp	edx, eax
	je	.L16
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L18
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: