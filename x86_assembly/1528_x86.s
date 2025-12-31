	.file	"1528.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"PERFECTION OUTPUT"
.LC2:
	.string	"%5d  "
.LC3:
	.string	"PERFECT"
.LC4:
	.string	"ABUNDANT"
.LC5:
	.string	"DEFICIENT"
.LC6:
	.string	"END OF OUTPUT"
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
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L2
.L12:
	mov	eax, DWORD PTR -24[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 3
	mov	DWORD PTR -20[rbp], eax
	jmp	.L4
.L3:
	mov	DWORD PTR -16[rbp], 2
	mov	DWORD PTR -20[rbp], 1
.L4:
	mov	DWORD PTR -12[rbp], 3
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	add	DWORD PTR -20[rbp], eax
.L6:
	mov	eax, DWORD PTR -16[rbp]
	add	DWORD PTR -12[rbp], eax
.L5:
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L7
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	jne	.L8
	mov	DWORD PTR -20[rbp], 0
.L8:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L9
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L11
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L10
.L11:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
.L10:
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L12
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
