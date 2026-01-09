S:
T:
M:
i:
j:
s:
team:
flag:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, M[rip]
	mov	rcx, rax
	lea	rax, T[rip]
	mov	rdx, rax
	lea	rax, S[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR i[rip], 0
	jmp	.L3
	lea	rcx, -12[rbp]
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	ecx, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, team[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	edx, DWORD PTR i[rip]
	mov	eax, DWORD PTR S[rip]
	cmp	edx, eax
	jl	.L4
	mov	DWORD PTR i[rip], 0
	jmp	.L5
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR M[rip]
	cmp	edx, eax
	jl	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	edx, DWORD PTR i[rip]
	mov	eax, DWORD PTR T[rip]
	cmp	edx, eax
	jl	.L7
	mov	DWORD PTR i[rip], 1
	mov	DWORD PTR s[rip], 0
	jmp	.L8
	mov	eax, DWORD PTR i[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, team[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR s[rip]
	add	eax, edx
	mov	DWORD PTR s[rip], eax
	mov	eax, DWORD PTR i[rip]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	jne	.L9
	mov	eax, DWORD PTR s[rip]
	add	eax, 1
	mov	DWORD PTR s[rip], eax
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	edx, DWORD PTR i[rip]
	mov	eax, DWORD PTR S[rip]
	cmp	edx, eax
	jle	.L10
	mov	edx, DWORD PTR s[rip]
	mov	eax, DWORD PTR j[rip]
	lea	ecx, 1[rax]
	mov	DWORD PTR j[rip], ecx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, M[rip]
	mov	rcx, rax
	lea	rax, T[rip]
	mov	rdx, rax
	lea	rax, S[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR S[rip]
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR T[rip]
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR M[rip]
	test	eax, eax
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: