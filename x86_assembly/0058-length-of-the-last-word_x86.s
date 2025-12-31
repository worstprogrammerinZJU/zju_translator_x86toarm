	.file	"0058-length-of-the-last-word.c"
	.intel_syntax noprefix
	.text
	.globl	lengthOfLastWord
	.type	lengthOfLastWord, @function
lengthOfLastWord:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -12[rbp], -1
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
.L4:
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L5
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
.L7:
	pop	rbp
	ret
	.size	lengthOfLastWord, .-lengthOfLastWord
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
