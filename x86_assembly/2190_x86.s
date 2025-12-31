	.file	"2190.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 16
	.type	str, @object
	.size	str, 20
str:
	.zero	20
	.globl	qu
	.align 4
	.type	qu, @object
	.size	qu, 4
qu:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"%d\n"
.LC2:
	.string	"X"
.LC3:
	.string	"-1"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 63
	jne	.L3
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR qu[rip], eax
	jmp	.L4
.L3:
	mov	eax, 10
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, str[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	movsx	eax, al
	sub	eax, 48
	imul	eax, edx
	add	DWORD PTR -4[rbp], eax
.L4:
	add	DWORD PTR -8[rbp], 1
.L2:
	cmp	DWORD PTR -8[rbp], 8
	jle	.L5
	movzx	eax, BYTE PTR str[rip+9]
	cmp	al, 63
	jne	.L6
	mov	DWORD PTR qu[rip], 9
	jmp	.L7
.L6:
	movzx	eax, BYTE PTR str[rip+9]
	cmp	al, 88
	jne	.L8
	add	DWORD PTR -4[rbp], 10
	jmp	.L7
.L8:
	movzx	eax, BYTE PTR str[rip+9]
	movsx	eax, al
	sub	eax, 48
	add	DWORD PTR -4[rbp], eax
.L7:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
.L12:
	mov	edx, DWORD PTR qu[rip]
	mov	eax, 10
	sub	eax, edx
	imul	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, [rdx+rax]
	movsx	rax, ecx
	imul	rax, rax, 780903145
	shr	rax, 32
	sar	eax
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	eax, edx
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	je	.L17
	add	DWORD PTR -8[rbp], 1
.L9:
	cmp	DWORD PTR -8[rbp], 9
	jle	.L12
	jmp	.L11
.L17:
	nop
.L11:
	cmp	DWORD PTR -8[rbp], 9
	jg	.L13
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
.L13:
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 10[rax]
	movsx	rax, ecx
	imul	rax, rax, 780903145
	shr	rax, 32
	sar	eax
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	eax, edx
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	jne	.L15
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L14
.L15:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L14:
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
