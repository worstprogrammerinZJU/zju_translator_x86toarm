	.file	"1856-maximum-subarray-min-product.c"
	.intel_syntax noprefix
	.text
	.globl	max
	.type	max, @function
max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	cmp	rdx, rax
	cmovge	rax, rdx
	pop	rbp
	ret
	.size	max, .-max
	.globl	maxSumMinProduct
	.type	maxSumMinProduct, @function
maxSumMinProduct:
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
	mov	QWORD PTR -96[rbp], 0
	mov	eax, DWORD PTR -124[rbp]
	add	eax, 1
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
	lea	rdx, 0[0+rax*8]
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -80[rbp], rax
	mov	eax, DWORD PTR -124[rbp]
	add	eax, 1
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
	lea	rdx, 0[0+rax*8]
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], 0
	mov	DWORD PTR -112[rbp], 0
	jmp	.L10
.L11:
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -112[rbp]
	movsx	rdx, edx
	mov	rsi, QWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -112[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -112[rbp]
	lea	edx, 1[rax]
	add	rcx, rsi
	mov	rax, QWORD PTR -80[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	add	DWORD PTR -112[rbp], 1
.L10:
	mov	eax, DWORD PTR -112[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L11
	mov	DWORD PTR -108[rbp], -1
	mov	DWORD PTR -104[rbp], 0
	jmp	.L12
.L17:
	mov	eax, DWORD PTR -108[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -108[rbp], edx
	mov	rdx, QWORD PTR -64[rbp]
	cdqe
	mov	rax, QWORD PTR [rdx+rax*8]
	mov	DWORD PTR -100[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	movsx	rcx, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	rsi, QWORD PTR [rax+rdx*8]
	cmp	DWORD PTR -108[rbp], 0
	js	.L14
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -108[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	lea	rdx, 1[rax]
	jmp	.L15
.L14:
	mov	edx, 0
.L15:
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	rax, rsi
	sub	rax, rdx
	imul	rcx, rax
	mov	rdx, rcx
	mov	rax, QWORD PTR -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	max
	mov	QWORD PTR -96[rbp], rax
.L13:
	cmp	DWORD PTR -108[rbp], 0
	js	.L16
	mov	eax, DWORD PTR -104[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	je	.L17
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -108[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jg	.L17
.L16:
	add	DWORD PTR -108[rbp], 1
	mov	eax, DWORD PTR -104[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -108[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	add	DWORD PTR -104[rbp], 1
.L12:
	mov	eax, DWORD PTR -104[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jle	.L13
	mov	rcx, QWORD PTR -96[rbp]
	movabs	rdx, -8543223828751151131
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 29
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 1000000007
	mov	rax, rcx
	sub	rax, rdx
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
	.size	maxSumMinProduct, .-maxSumMinProduct
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
