	.file	"0343-integer-break.c"
	.intel_syntax noprefix
	.text
	.globl	integerBreak
	.type	integerBreak, @function
integerBreak:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	DWORD PTR -52[rbp], edi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -52[rbp], 2
	jg	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -40[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L4:
	cmp	rsp, rdx
	je	.L5
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L4
.L5:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L6
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L6:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 8[rax], 1
	mov	DWORD PTR -48[rbp], 3
	jmp	.L7
.L10:
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 0
	mov	DWORD PTR -44[rbp], 1
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -48[rbp]
	sub	eax, DWORD PTR -44[rbp]
	imul	eax, DWORD PTR -44[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movq	rax, xmm2
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	fmax@PLT
	cvttsd2si	ecx, xmm0
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	mov	eax, DWORD PTR -48[rbp]
	sub	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	imul	eax, DWORD PTR -44[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	pxor	xmm3, xmm3
	cvtsi2sd	xmm3, eax
	movq	rax, xmm3
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	fmax@PLT
	cvttsd2si	ecx, xmm0
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -44[rbp], 1
.L8:
	mov	eax, DWORD PTR -48[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -44[rbp], eax
	jle	.L9
	add	DWORD PTR -48[rbp], 1
.L7:
	mov	eax, DWORD PTR -48[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jle	.L10
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
.L3:
	mov	rsp, rbx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	integerBreak, .-integerBreak
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
