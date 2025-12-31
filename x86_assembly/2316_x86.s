	.file	"2316.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
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
	lea	rax, -30[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L6:
	mov	DWORD PTR -36[rbp], 0
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -30[rbp+rax]
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -19[rbp+rax]
	add	eax, edx
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	BYTE PTR -30[rbp+rax], dl
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -30[rbp+rax]
	cmp	al, 57
	jle	.L4
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -30[rbp+rax]
	sub	eax, 10
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	BYTE PTR -30[rbp+rax], dl
.L4:
	add	DWORD PTR -36[rbp], 1
.L3:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -19[rbp+rax]
	test	al, al
	jne	.L5
.L2:
	lea	rax, -19[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L6
	lea	rax, -30[rbp]
	mov	rdi, rax
	call	puts@PLT
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
