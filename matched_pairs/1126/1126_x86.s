	.file	"1126.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 300
str:
	.zero	300
	.text
	.globl	sentence
	.type	sentence, @function
sentence:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 111
	jle	.L2
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jg	.L2
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 78
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	sentence
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 67
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 68
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 69
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 73
	jne	.L6
.L5:
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	sentence
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	js	.L7
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	sentence
	jmp	.L3
.L7:
	mov	eax, -1
	jmp	.L3
.L6:
	mov	eax, -1
.L3:
	leave
	ret
	.size	sentence, .-sentence
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
.LC2:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L9
.L11:
	mov	edi, 0
	call	sentence
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jle	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L10
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L9
.L10:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L9:
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L11
	mov	eax, 0
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
