	.file	"3027.c"
	.intel_syntax noprefix
	.text
	.globl	base
	.type	base, @function
base:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	eax, edx
	imul	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L2:
	cmp	DWORD PTR -12[rbp], 0
	jg	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -20[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, 1
	jmp	.L5
.L4:
	mov	eax, 0
.L5:
	pop	rbp
	ret
	.size	base, .-base
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d%d%d"
.LC2:
	.string	"%d\n"
.LC3:
	.string	"Non-existent."
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
	mov	DWORD PTR -16[rbp], 0
	jmp	.L7
.L13:
	lea	rsi, -20[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L8
.L11:
	mov	edx, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	base
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
.L9:
	sub	DWORD PTR -12[rbp], 1
.L8:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jg	.L11
.L10:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L12
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L12:
	add	DWORD PTR -16[rbp], 1
.L7:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
