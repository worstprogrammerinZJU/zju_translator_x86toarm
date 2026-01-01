	.file	"1017.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d%d%d%d%d%d"
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
	jmp	.L2
.L11:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	imul	edx, eax, -11
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	DWORD PTR -36[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	neg	eax
	mov	edx, DWORD PTR -32[rbp]
	add	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L3
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 3
	jne	.L4
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 5
	mov	DWORD PTR -36[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 2
	jne	.L5
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 3
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 6
	mov	DWORD PTR -36[rbp], eax
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	jne	.L3
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 5
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 7
	mov	DWORD PTR -36[rbp], eax
.L3:
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jle	.L6
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 954437177
	shr	rdx, 32
	sar	edx
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	movsx	rax, edx
	imul	rax, rax, 954437177
	shr	rax, 32
	sar	eax
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 3
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	je	.L6
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 9
	mov	DWORD PTR -32[rbp], eax
.L6:
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, 0[0+rax*4]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jle	.L7
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 954437177
	shr	rdx, 32
	sar	edx, 3
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	DWORD PTR -12[rbp], eax
	mov	ecx, DWORD PTR -36[rbp]
	movsx	rax, ecx
	imul	rax, rax, 954437177
	shr	rax, 32
	sar	eax, 3
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	sal	eax, 2
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR -36[rbp], edx
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	je	.L7
	add	DWORD PTR -12[rbp], 1
.L7:
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	r8, -20[rbp]
	lea	rdi, -24[rbp]
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	sub	rsp, 8
	lea	rsi, -16[rbp]
	push	rsi
	mov	r9, r8
	mov	r8, rdi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 16
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	je	.L9
.L8:
	mov	eax, 1
	jmp	.L10
.L9:
	mov	eax, 0
.L10:
	test	eax, eax
	jne	.L11
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
