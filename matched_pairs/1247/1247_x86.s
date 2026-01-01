	.file	"1247.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.align 8
.LC1:
	.string	"Sam stops at position %d and Ella stops at position %d.\n"
.LC2:
	.string	"No equal partitioning."
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 160
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L10:
	mov	DWORD PTR -148[rbp], 0
	mov	DWORD PTR -156[rbp], 1
	jmp	.L3
.L4:
	lea	rdx, -144[rbp]
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	add	DWORD PTR -148[rbp], eax
	add	DWORD PTR -156[rbp], 1
.L3:
	mov	eax, DWORD PTR -160[rbp]
	cmp	DWORD PTR -156[rbp], eax
	jle	.L4
	mov	DWORD PTR -152[rbp], 0
	mov	DWORD PTR -156[rbp], 1
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -156[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	add	DWORD PTR -152[rbp], eax
	mov	eax, DWORD PTR -152[rbp]
	add	eax, eax
	cmp	DWORD PTR -148[rbp], eax
	je	.L13
	add	DWORD PTR -156[rbp], 1
.L5:
	mov	eax, DWORD PTR -160[rbp]
	cmp	DWORD PTR -156[rbp], eax
	jle	.L8
	jmp	.L7
.L13:
	nop
.L7:
	mov	eax, DWORD PTR -160[rbp]
	cmp	DWORD PTR -156[rbp], eax
	jg	.L9
	mov	eax, DWORD PTR -156[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -156[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
.L9:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L2:
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -160[rbp]
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
