	.file	"3100.c"
	.intel_syntax noprefix
	.text
	.globl	pow
	.type	pow, @function
pow:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L3
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	pow, .-pow
	.section	.rodata
.LC0:
	.string	"%d%d"
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
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
.L10:
	mov	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -16[rbp], 1
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -20[rbp], 1
.L7:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	pow
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L8
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L9
	sub	DWORD PTR -20[rbp], 1
.L9:
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L6:
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L10
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
