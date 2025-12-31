	.file	"1775.c"
	.intel_syntax noprefix
	.text
	.globl	Factorial
	.data
	.align 32
	.type	Factorial, @object
	.size	Factorial, 40
Factorial:
	.long	1
	.long	1
	.long	2
	.long	6
	.long	24
	.long	120
	.long	720
	.long	5040
	.long	40320
	.long	362880
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"YES"
.LC2:
	.string	"NO"
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
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L12:
	mov	DWORD PTR -12[rbp], 9
	jmp	.L3
.L6:
	sub	DWORD PTR -12[rbp], 1
.L4:
	cmp	DWORD PTR -12[rbp], 0
	js	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Factorial[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jg	.L6
.L5:
	cmp	DWORD PTR -12[rbp], 0
	js	.L15
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Factorial[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
.L3:
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jg	.L4
	jmp	.L8
.L15:
	nop
.L8:
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L10
	cmp	DWORD PTR -12[rbp], 9
	je	.L10
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L11
.L10:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L11:
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jns	.L12
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
