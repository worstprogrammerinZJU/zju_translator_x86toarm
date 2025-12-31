	.file	"1183.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%ld"
.LC1:
	.string	"%ld\n"
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
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
.L4:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rdx
	add	rax, 1
	mov	edx, 0
	div	QWORD PTR -16[rbp]
	mov	rax, rdx
	test	rax, rax
	je	.L8
	sub	QWORD PTR -16[rbp], 1
	jmp	.L4
.L8:
	nop
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rax+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rdx
	add	rax, 1
	mov	edx, 0
	div	QWORD PTR -16[rbp]
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
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
