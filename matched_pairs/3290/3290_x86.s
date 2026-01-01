	.file	"3290.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 200
str:
	.zero	200
	.globl	pqrst
	.align 32
	.type	pqrst, @object
	.size	pqrst, 200
pqrst:
	.zero	200
	.globl	KACE
	.align 32
	.type	KACE, @object
	.size	KACE, 200
KACE:
	.zero	200
	.globl	len
	.align 4
	.type	len, @object
	.size	len, 4
len:
	.zero	4
	.globl	Len
	.align 4
	.type	Len, @object
	.size	Len, 4
Len:
	.zero	4
	.globl	N
	.align 4
	.type	N, @object
	.size	N, 4
N:
	.zero	4
	.text
	.globl	Middle
	.type	Middle, @function
Middle:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR N[rip]
	test	eax, eax
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 96
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jg	.L2
	jmp	.L3
.L4:
	mov	edi, 78
	call	putchar@PLT
	mov	eax, DWORD PTR N[rip]
	sub	eax, 1
	mov	DWORD PTR N[rip], eax
.L3:
	mov	eax, DWORD PTR N[rip]
	test	eax, eax
	jg	.L4
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	lea	edx, 1[rax]
	mov	eax, DWORD PTR len[rip]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	add	eax, 1
	mov	edi, eax
	call	Middle
.L5:
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR len[rip]
	cmp	edx, eax
	jge	.L7
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	add	eax, eax
	mov	edi, eax
	call	Middle
.L7:
	nop
	leave
	ret
	.size	Middle, .-Middle
	.section	.rodata
.LC0:
	.string	"no WFF possible"
.LC1:
	.string	"%s"
.LC2:
	.string	"0"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L9
.L24:
	mov	DWORD PTR len[rip], 0
	mov	DWORD PTR Len[rip], 0
	mov	DWORD PTR N[rip], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
.L16:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 112
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 113
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 114
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 115
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 116
	jne	.L12
.L11:
	mov	eax, DWORD PTR len[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR len[rip], edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, str[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
	cdqe
	lea	rcx, pqrst[rip]
	mov	BYTE PTR [rax+rcx], dl
	jmp	.L13
.L12:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 78
	jne	.L14
	mov	eax, DWORD PTR N[rip]
	add	eax, 1
	mov	DWORD PTR N[rip], eax
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 75
	je	.L15
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 65
	je	.L15
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 67
	je	.L15
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 69
	jne	.L13
.L15:
	mov	eax, DWORD PTR Len[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR Len[rip], edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, str[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
	cdqe
	lea	rcx, KACE[rip]
	mov	BYTE PTR [rax+rcx], dl
.L13:
	add	DWORD PTR -8[rbp], 1
.L10:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L16
	mov	eax, DWORD PTR len[rip]
	test	eax, eax
	jne	.L17
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L9
.L17:
	mov	edx, DWORD PTR len[rip]
	mov	eax, DWORD PTR Len[rip]
	cmp	edx, eax
	jle	.L18
	mov	eax, DWORD PTR Len[rip]
	add	eax, 1
	mov	DWORD PTR len[rip], eax
	jmp	.L19
.L18:
	mov	eax, DWORD PTR len[rip]
	sub	eax, 1
	mov	DWORD PTR Len[rip], eax
.L19:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L20
.L21:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, KACE[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, str[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -8[rbp], 1
.L20:
	mov	eax, DWORD PTR Len[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L21
	mov	DWORD PTR -4[rbp], 0
	jmp	.L22
.L23:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, pqrst[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, str[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
.L22:
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L23
	mov	edx, DWORD PTR len[rip]
	mov	eax, DWORD PTR Len[rip]
	add	eax, edx
	mov	DWORD PTR len[rip], eax
	mov	eax, DWORD PTR len[rip]
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	edi, 0
	call	Middle
	mov	edi, 10
	call	putchar@PLT
.L9:
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L24
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
