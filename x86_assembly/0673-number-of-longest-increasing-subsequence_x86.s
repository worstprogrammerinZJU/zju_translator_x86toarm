	.file	"0673-number-of-longest-increasing-subsequence.c"
	.intel_syntax noprefix
	.text
	.globl	findNumberOfLIS
	.type	findNumberOfLIS, @function
findNumberOfLIS:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -120[rbp], rdi
	mov	DWORD PTR -124[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -124[rbp], 0
	jne	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
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
	mov	QWORD PTR -80[rbp], rax
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
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
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L7:
	cmp	rsp, rdx
	je	.L8
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L7
.L8:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L9
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L9:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -108[rbp], 1
	mov	DWORD PTR -104[rbp], 0
	mov	DWORD PTR -100[rbp], 0
	jmp	.L10
.L15:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 1
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 1
	mov	DWORD PTR -96[rbp], 0
	jmp	.L11
.L14:
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L12
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jl	.L13
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	jmp	.L12
.L13:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jne	.L12
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	add	ecx, eax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
.L12:
	add	DWORD PTR -96[rbp], 1
.L11:
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jl	.L14
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, DWORD PTR -108[rbp]
	movq	rax, xmm2
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	fmax@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -108[rbp], eax
	add	DWORD PTR -100[rbp], 1
.L10:
	mov	eax, DWORD PTR -100[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L15
	mov	DWORD PTR -92[rbp], 0
	jmp	.L16
.L18:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	DWORD PTR -108[rbp], eax
	jne	.L17
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	add	DWORD PTR -104[rbp], eax
.L17:
	add	DWORD PTR -92[rbp], 1
.L16:
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L18
	mov	eax, DWORD PTR -104[rbp]
.L3:
	mov	rsp, rbx
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	findNumberOfLIS, .-findNumberOfLIS
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
