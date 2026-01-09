pqrst:
w:
WFF:
_Z3dfsv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, DWORD PTR w[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR w[rip], edx
	cdqe
	lea	rdx, WFF[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	BYTE PTR -1[rbp], al
	cmp	BYTE PTR -1[rbp], 75
	je	.L2
	cmp	BYTE PTR -1[rbp], 65
	je	.L2
	cmp	BYTE PTR -1[rbp], 67
	je	.L2
	cmp	BYTE PTR -1[rbp], 69
	jne	.L3
	call	_Z3dfsv
	mov	BYTE PTR -2[rbp], al
	call	_Z3dfsv
	mov	BYTE PTR -3[rbp], al
	cmp	BYTE PTR -1[rbp], 75
	jne	.L4
	cmp	BYTE PTR -2[rbp], 0
	je	.L5
	cmp	BYTE PTR -3[rbp], 0
	je	.L5
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 65
	jne	.L8
	cmp	BYTE PTR -2[rbp], 0
	jne	.L9
	cmp	BYTE PTR -3[rbp], 0
	je	.L10
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 67
	jne	.L12
	movzx	eax, BYTE PTR -2[rbp]
	cmp	eax, 1
	jne	.L13
	movzx	eax, BYTE PTR -3[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, 0
	jmp	.L7
	mov	eax, 1
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 69
	jne	.L16
	movzx	eax, BYTE PTR -2[rbp]
	cmp	al, BYTE PTR -3[rbp]
	jne	.L15
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 78
	jne	.L17
	call	_Z3dfsv
	mov	BYTE PTR -2[rbp], al
	movzx	eax, BYTE PTR -2[rbp]
	xor	eax, 1
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 112
	jne	.L18
	movzx	eax, BYTE PTR pqrst[rip+4]
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 113
	jne	.L19
	movzx	eax, BYTE PTR pqrst[rip+3]
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 114
	jne	.L20
	movzx	eax, BYTE PTR pqrst[rip+2]
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 115
	jne	.L21
	movzx	eax, BYTE PTR pqrst[rip+1]
	jmp	.L7
	cmp	BYTE PTR -1[rbp], 116
	jne	.L16
	movzx	eax, BYTE PTR pqrst[rip]
	jmp	.L7
	mov	eax, 0
	leave
	ret
_Z6simplei:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L23
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, pqrst[rip]
	mov	BYTE PTR [rax+rdx], 0
	jmp	.L25
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, pqrst[rip]
	mov	BYTE PTR [rax+rdx], 1
	sar	DWORD PTR -20[rbp]
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 4
	jle	.L26
	nop
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L28
	mov	DWORD PTR -4[rbp], 0
	jmp	.L29
	mov	DWORD PTR w[rip], 0
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z6simplei
	call	_Z3dfsv
	movzx	eax, al
	test	eax, eax
	sete	al
	test	al, al
	jne	.L36
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 31
	jle	.L32
	jmp	.L31
	nop
	cmp	DWORD PTR -4[rbp], 31
	jg	.L33
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L28
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, WFF[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR WFF[rip]
	cmp	al, 48
	setne	al
	test	al, al
	jne	.L34
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: