	.file	"2348.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"Stan wins"
.LC2:
	.string	"Ollie wins"
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
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L10:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -20[rbp], 1
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	cmp	eax, 1
	jg	.L13
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -12[rbp], edx
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, 1
	sub	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -20[rbp], eax
.L3:
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	jmp	.L5
.L13:
	nop
.L5:
	cmp	DWORD PTR -20[rbp], 1
	jne	.L7
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L8
.L7:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L8:
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L10
.L9:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
