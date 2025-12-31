	.file	"2853.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 1
	jmp	.L2
.L9:
	mov	DWORD PTR -12[rbp], 0
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 2
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	ecx, edx
	shr	ecx
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L4
	add	DWORD PTR -12[rbp], 1
.L4:
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	mov	DWORD PTR -20[rbp], eax
.L3:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	edx, DWORD PTR -24[rbp]
	add	edx, edx
	cmp	eax, edx
	jbe	.L5
	mov	DWORD PTR -20[rbp], 3
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L7
	add	DWORD PTR -12[rbp], 1
.L7:
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	mov	DWORD PTR -20[rbp], eax
.L6:
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	edx, DWORD PTR -24[rbp]
	add	edx, edx
	cmp	eax, edx
	jbe	.L8
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
.L2:
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L9
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
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
