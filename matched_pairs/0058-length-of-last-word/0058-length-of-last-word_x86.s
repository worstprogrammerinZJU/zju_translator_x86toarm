	.file	"0058-length-of-last-word.c"
	.intel_syntax noprefix
	.text
	.globl	lengthOfLastWord
	.type	lengthOfLastWord, @function
lengthOfLastWord:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	je	.L2
	mov	DWORD PTR -24[rbp], 1
.L2:
	mov	DWORD PTR -20[rbp], 1
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	je	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	jne	.L5
	mov	DWORD PTR -24[rbp], 1
	jmp	.L4
.L5:
	add	DWORD PTR -24[rbp], 1
.L4:
	add	DWORD PTR -20[rbp], 1
.L3:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	strlen@PLT
	cmp	rbx, rax
	jb	.L6
	mov	eax, DWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
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
