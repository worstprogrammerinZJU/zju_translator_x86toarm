	.file	"2304.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d%d%d%d"
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
	jmp	.L2
.L9:
	mov	DWORD PTR -12[rbp], 0
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L3
	add	DWORD PTR -12[rbp], 40
.L3:
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jle	.L4
	add	DWORD PTR -12[rbp], 40
.L4:
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jge	.L5
	add	DWORD PTR -12[rbp], 40
.L5:
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	sub	eax, edx
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	add	eax, 1080
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rsi, -16[rbp]
	lea	rcx, -20[rbp]
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	je	.L7
.L6:
	mov	eax, 1
	jmp	.L8
.L7:
	mov	eax, 0
.L8:
	test	eax, eax
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
