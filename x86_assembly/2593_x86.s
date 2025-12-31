	.file	"2593.c"
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
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L13:
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -36[rbp], -1001
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -16[rbp], -1001
	mov	DWORD PTR -12[rbp], -1001
	mov	DWORD PTR -20[rbp], 0
	jmp	.L3
.L10:
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L4
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -12[rbp], eax
.L5:
	mov	eax, DWORD PTR -40[rbp]
	add	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	add	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jle	.L6
	mov	DWORD PTR -24[rbp], 0
.L6:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jge	.L7
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -32[rbp], eax
.L7:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -36[rbp], eax
.L8:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jg	.L9
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -32[rbp], 0
.L9:
	add	DWORD PTR -20[rbp], 1
.L3:
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L10
	cmp	DWORD PTR -36[rbp], 0
	je	.L11
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L12
.L11:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -36[rbp], eax
.L12:
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -44[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
