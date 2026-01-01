	.file	"0853-car-fleet.c"
	.intel_syntax noprefix
	.text
	.globl	compareCars
	.type	compareCars, @function
compareCars:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
	.size	compareCars, .-compareCars
	.globl	carFleet
	.type	carFleet, @function
carFleet:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	DWORD PTR -100[rbp], edi
	mov	QWORD PTR -112[rbp], rsi
	mov	DWORD PTR -104[rbp], edx
	mov	QWORD PTR -120[rbp], rcx
	mov	DWORD PTR -124[rbp], r8d
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -104[rbp], 0
	jne	.L4
	mov	eax, 0
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -104[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -64[rbp], rdx
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
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
.L6:
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
.L7:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L8:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -84[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -112[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*8], ecx
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rdx, edx
	mov	DWORD PTR 4[rax+rdx*8], ecx
	add	DWORD PTR -84[rbp], 1
.L9:
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, DWORD PTR -104[rbp]
	jl	.L10
	mov	esi, DWORD PTR -104[rbp]
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, compareCars[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	DWORD PTR -80[rbp], 0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -72[rbp], xmm0
	mov	eax, DWORD PTR -104[rbp]
	sub	eax, 1
	mov	DWORD PTR -76[rbp], eax
	jmp	.L11
.L14:
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -100[rbp]
	sub	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	comisd	xmm0, QWORD PTR -72[rbp]
	jbe	.L12
	add	DWORD PTR -80[rbp], 1
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	QWORD PTR -72[rbp], xmm0
.L12:
	sub	DWORD PTR -76[rbp], 1
.L11:
	cmp	DWORD PTR -76[rbp], 0
	jns	.L14
	mov	eax, DWORD PTR -80[rbp]
.L5:
	mov	rsp, rbx
	mov	rdx, QWORD PTR -40[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	lea	rsp, -24[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
	.size	carFleet, .-carFleet
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	-1074790400
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
