	.file	"1159.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 5001
str:
	.zero	5001
	.globl	ing
	.align 32
	.type	ing, @object
	.size	ing, 5001
ing:
	.zero	5001
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	c
	.align 32
	.type	c, @object
	.size	c, 50020002
c:
	.zero	50020002
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -24[rbp], 0
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, ing[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -24[rbp], 1
	sub	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, ing[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	ebx, DWORD PTR n[rip]
	mov	eax, 0
	call	LCS
	mov	edx, eax
	mov	eax, ebx
	sub	eax, edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	main, .-main
	.globl	LCS
	.type	LCS, @function
LCS:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -8[rbp], 1
	jmp	.L6
.L11:
	mov	DWORD PTR -4[rbp], 1
	jmp	.L7
.L10:
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, ing[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L8
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rax, edx
	imul	rax, rax, 5001
	add	rax, rcx
	lea	rdx, [rax+rax]
	lea	rax, c[rip]
	movzx	eax, WORD PTR [rdx+rax]
	add	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 5001
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, c[rip]
	mov	WORD PTR [rdx+rax], cx
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 5001
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, c[rip]
	movzx	edx, WORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	movsx	rax, ecx
	imul	rax, rax, 5001
	add	rax, rsi
	lea	rcx, [rax+rax]
	lea	rax, c[rip]
	movzx	eax, WORD PTR [rcx+rax]
	cmp	dx, ax
	cmovge	eax, edx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 5001
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, c[rip]
	mov	WORD PTR [rcx+rdx], ax
.L9:
	add	DWORD PTR -4[rbp], 1
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L10
	add	DWORD PTR -8[rbp], 1
.L6:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L11
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 5001
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, c[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	pop	rbp
	ret
	.size	LCS, .-LCS
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
