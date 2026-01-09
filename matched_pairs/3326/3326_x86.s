n:
m:
r:
q:
student:
time:
PC:
used:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	edx, 40004
	mov	esi, 0
	lea	rax, student[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 7210721
	mov	esi, 0
	lea	rax, PC[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 1001
	mov	esi, 0
	lea	rax, used[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, r[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rsi, -24[rbp]
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 540
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	jne	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, used[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, used[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, student[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, student[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, student[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L6
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, time[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, used[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	jne	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, used[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, student[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, -1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, student[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, student[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 10001
	add	rdx, rax
	lea	rax, PC[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR r[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	lea	rax, q[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -24[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 540
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 540
	mov	DWORD PTR -8[rbp], eax
	jmp	.L11
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 10001
	add	rdx, rax
	lea	rax, PC[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L12
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
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
	jne	.L15
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	je	.L16
	mov	eax, 1
	jmp	.L17
	mov	eax, 0
	test	al, al
	jne	.L18
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: