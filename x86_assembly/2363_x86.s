	.file	"2363.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"0"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -48[rbp], 1
	mov	DWORD PTR -44[rbp], 8
	mov	DWORD PTR -40[rbp], 27
	mov	DWORD PTR -36[rbp], 64
	mov	DWORD PTR -32[rbp], 125
	mov	DWORD PTR -28[rbp], 216
	mov	DWORD PTR -24[rbp], 343
	mov	DWORD PTR -20[rbp], 512
	mov	DWORD PTR -16[rbp], 729
	mov	DWORD PTR -12[rbp], 1000
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -72[rbp], 0
	jmp	.L2
.L12:
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -68[rbp], 0
	jmp	.L3
.L4:
	add	DWORD PTR -68[rbp], 1
.L3:
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	edx, DWORD PTR -48[rbp+rax*4]
	mov	eax, DWORD PTR -76[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -76[rbp]
	test	eax, eax
	jne	.L5
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L5:
	mov	DWORD PTR -60[rbp], 10000
	jmp	.L6
.L11:
	mov	eax, DWORD PTR -76[rbp]
	cdq
	idiv	DWORD PTR -68[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -76[rbp]
	cdq
	idiv	DWORD PTR -68[rbp]
	mov	DWORD PTR -56[rbp], eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -56[rbp]
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -64[rbp], eax
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -56[rbp]
	cdq
	idiv	DWORD PTR -64[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -68[rbp]
	imul	eax, DWORD PTR -64[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -56[rbp]
	add	eax, edx
	lea	ecx, [rax+rax]
	mov	eax, DWORD PTR -68[rbp]
	imul	eax, DWORD PTR -56[rbp]
	add	eax, eax
	cdq
	idiv	DWORD PTR -64[rbp]
	add	eax, ecx
	mov	DWORD PTR -52[rbp], eax
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -52[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -60[rbp], eax
.L9:
	sub	DWORD PTR -64[rbp], 1
.L8:
	cmp	DWORD PTR -64[rbp], 0
	jg	.L10
.L7:
	sub	DWORD PTR -68[rbp], 1
.L6:
	cmp	DWORD PTR -68[rbp], 0
	jne	.L11
	mov	eax, DWORD PTR -60[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -72[rbp], 1
.L2:
	mov	eax, DWORD PTR -80[rbp]
	cmp	DWORD PTR -72[rbp], eax
	jl	.L12
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
