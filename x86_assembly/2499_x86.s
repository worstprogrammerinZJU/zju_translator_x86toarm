	.file	"2499.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"Scenario #%d:\n%d %d\n\n"
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
	mov	DWORD PTR -24[rbp], 1
	jmp	.L2
.L9:
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L3
.L6:
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -32[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -28[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, DWORD PTR -28[rbp]
	cdq
	idiv	edi
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -32[rbp], eax
.L3:
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 1
	je	.L5
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	jne	.L6
.L5:
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	add	DWORD PTR -16[rbp], eax
	jmp	.L8
.L7:
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	add	DWORD PTR -20[rbp], eax
.L8:
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -24[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L9
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
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
