	.file	"1607.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC2:
	.string	"Cards  Overhang"
.LC3:
	.string	"%5d%10.3f\n"
.LC4:
	.string	"%ld"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -798720[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 1312
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -800024[rbp], xmm0
	mov	DWORD PTR -800028[rbp], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -800028[rbp]
	add	eax, eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -800024[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -800024[rbp], xmm0
	mov	eax, DWORD PTR -800028[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -800024[rbp]
	movsd	QWORD PTR -800016[rbp+rax*8], xmm0
	mov	eax, DWORD PTR -800028[rbp]
	add	eax, 1
	mov	DWORD PTR -800028[rbp], eax
.L2:
	mov	eax, DWORD PTR -800028[rbp]
	cmp	eax, 99999
	jle	.L3
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -800028[rbp]
	cdqe
	mov	rdx, QWORD PTR -800016[rbp+rax*8]
	mov	eax, DWORD PTR -800028[rbp]
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L4:
	lea	rax, -800028[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
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
