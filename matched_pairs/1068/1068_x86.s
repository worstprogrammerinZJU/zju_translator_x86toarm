	.file	"1068.c"
	.intel_syntax noprefix
	.text
	.globl	stack
	.bss
	.align 32
	.type	stack, @object
	.size	stack, 400
stack:
	.zero	400
	.globl	top
	.align 4
	.type	top, @object
	.size	top, 4
top:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d "
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
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -24[rbp], 0
	jmp	.L2
.L10:
	mov	DWORD PTR top[rip], 0
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L9:
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR top[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR top[rip], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, stack[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -16[rbp], 1
.L4:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR top[rip]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -28[rbp], 1
	jmp	.L6
.L8:
	sub	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
.L6:
	cmp	DWORD PTR -16[rbp], 0
	js	.L7
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, stack[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L8
.L7:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, stack[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
.L3:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L9
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -24[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L10
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
