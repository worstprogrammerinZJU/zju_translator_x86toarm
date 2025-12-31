	.file	"2346.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"10"
.LC2:
	.string	"670"
.LC3:
	.string	"55252"
.LC4:
	.string	"4816030"
.LC5:
	.string	"432457640"
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
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 2
	jne	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L2:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 4
	jne	.L3
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L3:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 6
	jne	.L4
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L4:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 8
	jne	.L5
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 10
	jne	.L6
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
.L6:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
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
