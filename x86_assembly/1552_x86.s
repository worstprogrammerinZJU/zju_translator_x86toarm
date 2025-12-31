	.file	"1552.c"
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
	sub	rsp, 112
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L11:
	mov	DWORD PTR -100[rbp], 0
	mov	DWORD PTR -88[rbp], 0
	jmp	.L3
.L4:
	add	DWORD PTR -100[rbp], 1
	lea	rdx, -80[rbp]
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L3:
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	test	eax, eax
	jne	.L4
	mov	DWORD PTR -96[rbp], 0
	jmp	.L5
.L10:
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	add	eax, eax
	mov	DWORD PTR -84[rbp], eax
	mov	DWORD PTR -92[rbp], 0
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	cmp	DWORD PTR -84[rbp], eax
	jne	.L7
	add	DWORD PTR -88[rbp], 1
	jmp	.L8
.L7:
	add	DWORD PTR -92[rbp], 1
.L6:
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jl	.L9
.L8:
	add	DWORD PTR -96[rbp], 1
.L5:
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jl	.L10
	mov	eax, DWORD PTR -88[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -80[rbp]
	cmp	eax, -1
	jne	.L11
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
