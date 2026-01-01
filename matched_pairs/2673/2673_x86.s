	.file	"2673.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -20[rbp], 1000000
	lea	rcx, -32[rbp]
	lea	rdx, -36[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L2
.L5:
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L3
	sub	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L4
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
.L4:
	add	DWORD PTR -16[rbp], 1
.L2:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L5
	cmp	DWORD PTR -20[rbp], 0
	jg	.L6
	mov	DWORD PTR -16[rbp], 0
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L8
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, edx
	mov	DWORD PTR -16[rbp], eax
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -40[rbp]
	sub	eax, DWORD PTR -20[rbp]
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, ecx
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
.L7:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
