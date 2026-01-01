	.file	"0973-k-closest-points-to-origin.c"
	.intel_syntax noprefix
	.text
	.globl	distance
	.type	distance, @function
distance:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, edx
	imul	ecx, eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, edx
	add	eax, ecx
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
	.size	distance, .-distance
	.globl	compare
	.type	compare, @function
compare:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, QWORD PTR [rax]
	call	distance
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR [rax]
	call	distance
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L11
	mov	eax, -1
	jmp	.L6
.L11:
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L12
	mov	eax, 1
	jmp	.L6
.L12:
	mov	eax, 0
.L6:
	leave
	ret
	.size	compare, .-compare
	.globl	kClosest
	.type	kClosest, @function
kClosest:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	DWORD PTR -64[rbp], ecx
	mov	QWORD PTR -80[rbp], r8
	mov	QWORD PTR -88[rbp], r9
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -40[rbp], 0
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -32[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -32[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -40[rbp], 1
.L14:
	mov	eax, DWORD PTR -40[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L15
	mov	esi, DWORD PTR -60[rbp]
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, compare[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -64[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR -36[rbp], 0
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	lea	rbx, [rdx+rax]
	mov	edi, 8
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	rdx, QWORD PTR [rdx]
	add	rdx, 4
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 2
	add	DWORD PTR -36[rbp], 1
.L16:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -64[rbp]
	jl	.L17
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	kClosest, .-kClosest
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
