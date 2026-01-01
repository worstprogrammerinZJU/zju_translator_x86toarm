	.file	"1006.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d %d %d %d"
	.align 8
.LC1:
	.string	"Case %d: the next triple peak occurs in %d days.\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -12[rbp], 1
.L5:
	lea	rsi, -20[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, -1
	je	.L9
.L2:
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1307163959
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 23
	sub	eax, ecx
	mov	edx, eax
	imul	ecx, edx, 5544
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	esi, eax
	sar	esi, 31
	sub	edx, esi
	imul	esi, edx, 28
	sub	eax, esi
	mov	edx, eax
	imul	eax, edx, 14421
	lea	esi, [rcx+rax]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rax, edx
	imul	rax, rax, 1041204193
	shr	rax, 32
	sar	eax, 3
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 5
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	imul	eax, eax, 1288
	lea	edx, [rsi+rax]
	movsx	rax, edx
	imul	rax, rax, 827789669
	shr	rax, 32
	sar	eax, 12
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 21252
	mov	eax, edx
	sub	eax, ecx
	mov	edx, DWORD PTR -20[rbp]
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -16[rbp], 0
	jg	.L4
	add	DWORD PTR -16[rbp], 21252
.L4:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	jmp	.L5
.L9:
	nop
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
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
