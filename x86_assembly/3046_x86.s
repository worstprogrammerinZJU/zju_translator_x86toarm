	.file	"3046.c"
	.intel_syntax noprefix
	.text
	.globl	family
	.bss
	.align 32
	.type	family, @object
	.size	family, 4004
family:
	.zero	4004
	.globl	coefficient
	.align 32
	.type	coefficient, @object
	.size	coefficient, 400004
coefficient:
	.zero	400004
	.globl	temp
	.align 32
	.type	temp, @object
	.size	temp, 400004
temp:
	.zero	400004
	.globl	T
	.align 4
	.type	T, @object
	.size	T, 4
T:
	.zero	4
	.globl	A
	.align 4
	.type	A, @object
	.size	A, 4
A:
	.zero	4
	.globl	S
	.align 4
	.type	S, @object
	.size	S, 4
S:
	.zero	4
	.globl	B
	.align 4
	.type	B, @object
	.size	B, 4
B:
	.zero	4
	.globl	Q
	.align 4
	.type	Q, @object
	.size	Q, 4
Q:
	.zero	4
	.text
	.globl	multiply
	.type	multiply, @function
multiply:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, temp[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
.L2:
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L3
	mov	DWORD PTR -8[rbp], 1
	jmp	.L4
.L7:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
.L6:
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, temp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, esi
	add	ecx, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, temp[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
.L5:
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L6
	add	DWORD PTR -8[rbp], 1
.L4:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, family[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L7
	mov	edx, DWORD PTR Q[rip]
	mov	eax, DWORD PTR B[rip]
	cmp	edx, eax
	jge	.L8
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, family[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR Q[rip]
	add	eax, edx
	mov	DWORD PTR Q[rip], eax
	jmp	.L9
.L8:
	mov	eax, DWORD PTR B[rip]
	mov	DWORD PTR Q[rip], eax
.L9:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, temp[rip]
	mov	edx, DWORD PTR [rdx+rax]
	movsx	rax, edx
	imul	rax, rax, 1125899907
	shr	rax, 32
	sar	eax, 18
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 1000000
	mov	eax, edx
	sub	eax, ecx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, coefficient[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
.L10:
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L11
	nop
	nop
	pop	rbp
	ret
	.size	multiply, .-multiply
	.section	.rodata
.LC0:
	.string	"%d%d%d%d"
.LC1:
	.string	"%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	r8, B[rip]
	lea	rax, S[rip]
	mov	rcx, rax
	lea	rax, A[rip]
	mov	rdx, rax
	lea	rax, T[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L13
.L14:
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, family[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, family[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -12[rbp], 1
.L13:
	mov	eax, DWORD PTR A[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR family[rip+4]
	mov	DWORD PTR Q[rip], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L15
.L16:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -12[rbp], 1
.L15:
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L16
	mov	DWORD PTR -12[rbp], 2
	jmp	.L17
.L18:
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	multiply
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	eax, DWORD PTR T[rip]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L18
	mov	eax, DWORD PTR S[rip]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	jmp	.L19
.L20:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	movsx	rax, edx
	imul	rax, rax, 1125899907
	shr	rax, 32
	sar	eax, 18
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 1000000
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
.L19:
	mov	eax, DWORD PTR B[rip]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L20
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
