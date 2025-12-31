	.file	"1035-uncrossed-lines.c"
	.intel_syntax noprefix
	.text
	.globl	maxUncrossedLines
	.type	maxUncrossedLines, @function
maxUncrossedLines:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -104[rbp], rdi
	mov	DWORD PTR -108[rbp], esi
	mov	QWORD PTR -120[rbp], rdx
	mov	DWORD PTR -112[rbp], ecx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	QWORD PTR -128[rbp], rax
	mov	eax, DWORD PTR -112[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -108[rbp]
	lea	esi, 1[rax]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rax, ecx
	lea	rbx, 0[0+rax*4]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rdi, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rax, ecx
	mov	r10, rax
	mov	r11d, 0
	movsx	rax, esi
	mov	r8, rax
	mov	r9d, 0
	mov	rdx, r11
	imul	rdx, r8
	mov	rax, r9
	imul	rax, r10
	lea	rdi, [rdx+rax]
	mov	rax, r10
	mul	r8
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rdx, ecx
	movsx	rax, esi
	imul	rax, rdx
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
.L2:
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
.L3:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L4:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -88[rbp], 0
	jmp	.L5
.L12:
	mov	DWORD PTR -84[rbp], 0
	jmp	.L6
.L11:
	cmp	DWORD PTR -88[rbp], 0
	je	.L7
	cmp	DWORD PTR -84[rbp], 0
	jne	.L8
.L7:
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -88[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	DWORD PTR [rax+rdx*4], 0
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, -4[rax]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L10
	mov	rcx, rbx
	shr	rcx, 2
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	lea	esi, -1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rsi, esi
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsi, rbx
	shr	rsi, 2
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -88[rbp]
	movsx	rdx, edx
	imul	rdx, rsi
	add	rdx, rdi
	mov	DWORD PTR [rax+rdx*4], ecx
	jmp	.L9
.L10:
	mov	rcx, rbx
	shr	rcx, 2
	mov	eax, DWORD PTR -84[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -88[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	rcx, rbx
	shr	rcx, 2
	mov	eax, DWORD PTR -88[rbp]
	lea	esi, -1[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdi, edx
	movsx	rdx, esi
	imul	rdx, rcx
	add	rdx, rdi
	mov	eax, DWORD PTR [rax+rdx*4]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movq	rax, xmm2
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	fmax@PLT
	mov	rsi, rbx
	shr	rsi, 2
	cvttsd2si	edx, xmm0
	mov	rax, QWORD PTR -64[rbp]
	mov	ecx, DWORD PTR -84[rbp]
	movsx	rdi, ecx
	mov	ecx, DWORD PTR -88[rbp]
	movsx	rcx, ecx
	imul	rcx, rsi
	add	rcx, rdi
	mov	DWORD PTR [rax+rcx*4], edx
.L9:
	add	DWORD PTR -84[rbp], 1
.L6:
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, DWORD PTR -112[rbp]
	jle	.L11
	add	DWORD PTR -88[rbp], 1
.L5:
	mov	eax, DWORD PTR -88[rbp]
	cmp	eax, DWORD PTR -108[rbp]
	jle	.L12
	shr	rbx, 2
	mov	rcx, rbx
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -112[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -108[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsp, QWORD PTR -128[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	maxUncrossedLines, .-maxUncrossedLines
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
