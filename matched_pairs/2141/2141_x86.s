	.file	"2141.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -132[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	sub	eax, 97
	mov	edx, eax
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	mov	BYTE PTR -128[rbp+rax], dl
	add	DWORD PTR -132[rbp], 1
.L2:
	cmp	DWORD PTR -132[rbp], 25
	jle	.L3
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -132[rbp], 0
	jmp	.L4
.L8:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 96
	jle	.L5
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 122
	jg	.L5
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	add	eax, 97
	mov	edi, eax
	call	putchar@PLT
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 64
	jle	.L7
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	cmp	al, 90
	jg	.L7
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	add	eax, 65
	mov	edi, eax
	call	putchar@PLT
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
.L6:
	add	DWORD PTR -132[rbp], 1
.L4:
	mov	eax, DWORD PTR -132[rbp]
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	test	al, al
	jne	.L8
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
