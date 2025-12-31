	.file	"1922.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	mov	DWORD PTR -16[rbp], 16200
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L6:
	mov	DWORD PTR -20[rbp], 16201
	mov	DWORD PTR -24[rbp], 0
	jmp	.L3
.L5:
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	js	.L4
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	ecx
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L4
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	setne	al
	movzx	edx, al
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
.L4:
	add	DWORD PTR -24[rbp], 1
.L3:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jne	.L6
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
