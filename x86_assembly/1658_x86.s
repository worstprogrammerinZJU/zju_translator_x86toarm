	.file	"1658.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d "
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -48[rbp], 0
	jmp	.L2
.L7:
	mov	DWORD PTR -44[rbp], 0
	jmp	.L3
.L4:
	lea	rdx, -32[rbp]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -44[rbp], 1
.L3:
	cmp	DWORD PTR -44[rbp], 3
	jle	.L4
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -32[rbp]
	sub	eax, edx
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -28[rbp]
	sub	eax, edx
	cmp	DWORD PTR -40[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	cmp	DWORD PTR -40[rbp], eax
	jne	.L5
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L6:
	add	DWORD PTR -48[rbp], 1
.L2:
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -48[rbp], eax
	jl	.L7
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
