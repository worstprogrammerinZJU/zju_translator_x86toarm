	.file	"3091.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d %d\n"
.LC2:
	.string	"[%d,%d]"
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
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -24[rbp], 1
	jmp	.L2
.L13:
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -36[rbp]
	add	eax, eax
	add	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -36[rbp]
	movsx	rax, edx
	imul	rax, rax, 1431655766
	shr	rax, 32
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	add	ecx, ecx
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	cmp	eax, 2
	jne	.L3
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -36[rbp], eax
.L3:
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -28[rbp], eax
	jmp	.L4
.L7:
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 7
	test	eax, eax
	jne	.L5
	mov	edi, 10
	call	putchar@PLT
	jmp	.L6
.L5:
	mov	edi, 32
	call	putchar@PLT
.L6:
	add	DWORD PTR -32[rbp], 1
	sub	DWORD PTR -28[rbp], 1
.L4:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -28[rbp], eax
	jmp	.L8
.L12:
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 7
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L10
.L9:
	mov	edi, 10
	call	putchar@PLT
	jmp	.L11
.L10:
	mov	edi, 32
	call	putchar@PLT
.L11:
	add	DWORD PTR -32[rbp], 1
	sub	DWORD PTR -28[rbp], 1
.L8:
	cmp	DWORD PTR -28[rbp], 0
	jg	.L12
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -24[rbp], 1
.L2:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L13
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
