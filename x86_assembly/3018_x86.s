gift:
queue:
c:
d:
n:
f:
GE:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, gift[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR d[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR d[rip]
	cdqe
	lea	rdx, _Z3cmpPKvS0_[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, gift[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR d[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR d[rip]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 4000
	lea	rdi, [rdx+rcx]
	lea	rdx, _Z3cmpPKvS0_[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	call	qsort@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	DWORD PTR c[rip], 0
	mov	DWORD PTR f[rip], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, gift[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L27
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR d[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	jmp	.L12
	nop
	mov	eax, DWORD PTR d[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L14
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR f[rip]
	lea	ecx, 1[rax]
	mov	DWORD PTR f[rip], ecx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	DWORD PTR c[rip], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	eax, DWORD PTR c[rip]
	test	eax, eax
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z5boxesi
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	DWORD PTR -4[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, 1
	mov	edi, eax
	call	_Z3dfsii
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR c[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L21
	mov	DWORD PTR -8[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	lea	rax, d[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L25
	mov	eax, 0
	leave
	ret
_Z3cmpPKvS0_:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L29
	mov	eax, 1
	jmp	.L30
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L31
	mov	eax, -1
	jmp	.L30
	mov	eax, 0
	pop	rbp
	ret
_Z5boxesi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L33
	mov	DWORD PTR -8[rbp], 0
	jmp	.L34
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rcx, ecx
	cdqe
	imul	rax, rax, 1000
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L40
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR d[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L37
	jmp	.L36
	nop
	mov	eax, DWORD PTR d[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L38
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], -1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L39
	nop
	nop
	pop	rbp
	ret
_Z3dfsii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L42
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 1
	jne	.L43
	mov	DWORD PTR -8[rbp], 0
	jmp	.L44
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 1
	jne	.L45
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, -1
	jne	.L45
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 500
	add	rdx, rax
	lea	rax, GE[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L46
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L47
	mov	eax, DWORD PTR c[rip]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L49
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR c[rip], eax
	nop
	leave
	ret
0:
1:
2:
3:
4: