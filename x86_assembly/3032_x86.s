	.file	"3032.c"
	.intel_syntax noprefix
	.text
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
	sub	rsp, 160
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -152[rbp], 0
	jmp	.L2
.L11:
	lea	rax, -156[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -148[rbp], 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -148[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx
	add	DWORD PTR -148[rbp], 1
.L3:
	mov	eax, DWORD PTR -156[rbp]
	cmp	DWORD PTR -148[rbp], eax
	jl	.L4
	mov	DWORD PTR -132[rbp], 1
	mov	DWORD PTR -140[rbp], 1
	mov	eax, DWORD PTR -156[rbp]
	mov	DWORD PTR -136[rbp], eax
	mov	DWORD PTR -144[rbp], 1
	jmp	.L5
.L8:
	mov	DWORD PTR -148[rbp], 1
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	mov	edx, DWORD PTR -140[rbp]
	mov	DWORD PTR -64[rbp+rax*4], edx
	mov	eax, DWORD PTR -140[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	DWORD PTR -140[rbp], eax
	mov	eax, DWORD PTR -136[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	DWORD PTR -136[rbp], eax
	add	DWORD PTR -148[rbp], 1
.L6:
	mov	eax, DWORD PTR -148[rbp]
	cmp	eax, DWORD PTR -144[rbp]
	jle	.L7
	mov	eax, DWORD PTR -140[rbp]
	cdqe
	mov	edx, DWORD PTR -144[rbp]
	mov	DWORD PTR -128[rbp+rax*4], edx
	mov	eax, DWORD PTR -140[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	DWORD PTR -140[rbp], eax
	add	DWORD PTR -144[rbp], 1
.L5:
	mov	eax, DWORD PTR -156[rbp]
	cmp	DWORD PTR -144[rbp], eax
	jle	.L8
	mov	DWORD PTR -148[rbp], 1
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -148[rbp], 1
.L9:
	mov	eax, DWORD PTR -156[rbp]
	cmp	DWORD PTR -148[rbp], eax
	jle	.L10
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -152[rbp], 1
.L2:
	mov	eax, DWORD PTR -160[rbp]
	cmp	DWORD PTR -152[rbp], eax
	jl	.L11
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
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
