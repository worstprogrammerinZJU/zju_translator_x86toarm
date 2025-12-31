	.file	"2876.c"
	.intel_syntax noprefix
	.text
	.globl	base
	.data
	.align 32
	.type	base, @object
	.size	base, 52
base:
	.long	0
	.long	1
	.long	3
	.long	9
	.long	27
	.long	81
	.long	243
	.long	729
	.long	2187
	.long	6561
	.long	19683
	.long	59049
	.long	177147
	.text
	.globl	print
	.type	print, @function
print:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jne	.L2
	mov	edi, 45
	call	putchar@PLT
	jmp	.L6
.L2:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	print
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, base[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
.L5:
	mov	edi, 32
	call	putchar@PLT
	sub	DWORD PTR -4[rbp], 1
.L4:
	cmp	DWORD PTR -4[rbp], 0
	jg	.L5
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	print
.L6:
	nop
	leave
	ret
	.size	print, .-print
	.section	.rodata
.LC0:
	.string	"%d"
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
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	print
	mov	edi, 10
	call	putchar@PLT
.L8:
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L9
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
