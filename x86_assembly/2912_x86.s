Round:
P:
Q:
R:
n:
m:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rcx, -20[rbp]
	lea	rdx, -21[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	movzx	eax, BYTE PTR -21[rbp]
	cmp	al, 60
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Round[rip]
	mov	DWORD PTR [rdx+rax], 2
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Round[rip+4]
	mov	DWORD PTR [rcx+rax], edx
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Round[rip+8]
	mov	DWORD PTR [rcx+rax], edx
	jmp	.L5
	movzx	eax, BYTE PTR -21[rbp]
	cmp	al, 62
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Round[rip]
	mov	DWORD PTR [rdx+rax], 2
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Round[rip+4]
	mov	DWORD PTR [rcx+rax], edx
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Round[rip+8]
	mov	DWORD PTR [rcx+rax], edx
	jmp	.L5
	movzx	eax, BYTE PTR -21[rbp]
	cmp	al, 61
	jne	.L5
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Round[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Round[rip+4]
	mov	DWORD PTR [rcx+rax], edx
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Round[rip+8]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], -1
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	Rochambeau
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, -1
	jne	.L9
	cmp	DWORD PTR -8[rbp], 0
	jne	.L18
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L11
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L11
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L13
	jmp	.L12
	nop
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jg	.L14
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	cmp	DWORD PTR -8[rbp], 0
	jne	.L15
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	esi, eax
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
	cmp	eax, -1
	jne	.L16
	mov	eax, 0
	leave
	ret
Rochambeau:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L20
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	DWORD PTR [rdx+rax], -1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L21
	mov	DWORD PTR -4[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Round[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Round[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Round[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	je	.L43
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	je	.L43
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L26
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L27
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L28
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L29
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	cmp	DWORD PTR -16[rbp], 1
	jne	.L30
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -12[rbp], eax
	je	.L31
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L32
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L33
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	je	.L34
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L35
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L33
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L36
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Q[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L37
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L38
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, R[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L39
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L40
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L40
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L41
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L41
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L25
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L25
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	jmp	.L25
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L42
	mov	eax, -1
	leave
	ret
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L45
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L46
	jmp	.L47
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, P[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L48
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L51
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L52
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L53
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, P[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L54
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L54
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L55
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L55
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L55
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L56
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L56
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L57
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L57
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L57
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L52
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, P[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, P[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L58
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L58
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L59
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L59
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L59
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Q[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Q[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L60
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L60
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L61
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L61
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L61
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, R[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, R[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: