	.file	"2840.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"%d\n"
.LC3:
	.string	"0"
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
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -32[rbp], 0
	jmp	.L2
.L11:
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -14[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L3
.L4:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movzx	eax, BYTE PTR -14[rbp+rax]
	movsx	eax, al
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -28[rbp], 1
.L3:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movzx	eax, BYTE PTR -14[rbp+rax]
	cmp	al, 58
	jne	.L4
	add	DWORD PTR -28[rbp], 1
	jmp	.L5
.L6:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movzx	eax, BYTE PTR -14[rbp+rax]
	movsx	eax, al
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -28[rbp], 1
.L5:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movzx	eax, BYTE PTR -14[rbp+rax]
	test	al, al
	jne	.L6
	cmp	DWORD PTR -20[rbp], 0
	jne	.L7
	add	DWORD PTR -24[rbp], 12
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 3
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	je	.L8
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 3
	sub	ecx, eax
	mov	edx, ecx
	jmp	.L9
.L8:
	mov	edx, 24
.L9:
	mov	esi, edx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
.L7:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L10:
	add	DWORD PTR -32[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -32[rbp], eax
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
