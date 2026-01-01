	.file	"2140.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
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
	mov	DWORD PTR -12[rbp], 1
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 2
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -16[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	mov	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L3
	add	DWORD PTR -12[rbp], 1
.L3:
	add	DWORD PTR -16[rbp], 2
.L2:
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	cmp	edx, eax
	jle	.L4
	mov	DWORD PTR -16[rbp], 3
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -16[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	add	DWORD PTR -12[rbp], 1
.L6:
	add	DWORD PTR -16[rbp], 2
.L5:
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	cmp	edx, eax
	jle	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
