len:
num:
str:
s1:
s2:
t:
r:
reversal:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -5[rbp], al
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR -5[rbp]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	edx, eax
	jl	.L3
	nop
	nop
	pop	rbp
	ret
store:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, r[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L6
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, r[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, r[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, str[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, r[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L14
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR num[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	jmp	.L11
	nop
	mov	eax, DWORD PTR num[rip]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR num[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR num[rip], edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, str[rip]
	add	rax, rdx
	lea	rdx, r[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	lea	rax, t[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, t[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcpy@PLT
	mov	DWORD PTR num[rip], 1
	lea	rax, t[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR len[rip], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L18
	mov	DWORD PTR -12[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, s1[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L20
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, s1[rip]
	mov	BYTE PTR [rax+rdx], 0
	jmp	.L21
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	movsx	rax, ecx
	lea	rcx, s2[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s2[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	reversal
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s2[rip]
	mov	rsi, rax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	reversal
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s2[rip]
	mov	rsi, rax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	reversal
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s2[rip]
	mov	rsi, rax
	lea	rax, s1[rip]
	mov	rdi, rax
	call	store
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	lea	rax, s1[rip]
	mov	rsi, rax
	lea	rax, s2[rip]
	mov	rdi, rax
	call	store
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	mov	eax, DWORD PTR num[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: