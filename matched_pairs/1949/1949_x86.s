n:
max:
m:
time:
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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rdx, -12[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR max[rip], 0
	jmp	.L3
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR max[rip]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR max[rip], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR max[rip]
	add	edx, ecx
	lea	ecx, [rax+rdx]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR m[rip]
	cmp	edx, eax
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, time[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR m[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR m[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: