n:
m:
LiMing:
score:
hash:
rank:
s:
student:
ELFhash:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	shr	rax, 24
	xor	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	not	rax
	and	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L4
	mov	rcx, QWORD PTR -8[rbp]
	movabs	rdx, -6691484059914626997
	mov	rax, rcx
	mul	rdx
	mov	rax, rcx
	sub	rax, rdx
	shr	rax
	add	rax, rdx
	shr	rax, 13
	imul	rdx, rax, 10007
	mov	rax, rcx
	sub	rax, rdx
	pop	rbp
	ret
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, hash[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	lea	rdx, student[rip]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	edx, 40028
	mov	esi, -1
	lea	rax, hash[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	lea	rdx, student[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	lea	rdx, student[rip]
	add	rax, rdx
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, hash[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, -1
	jne	.L14
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, hash[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L13
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L15
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, student[rip+32]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	find
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR LiMing[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR s[rip], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR rank[rip], 1
	jmp	.L20
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR s[rip]
	cmp	edx, eax
	jle	.L21
	mov	eax, DWORD PTR rank[rip]
	add	eax, 1
	mov	DWORD PTR rank[rip], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR rank[rip]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L23
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: