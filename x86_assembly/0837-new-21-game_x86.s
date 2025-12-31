	.file	"0837-new-21-game.c"
	.intel_syntax noprefix
	.text
	.globl	new21Game
	.type	new21Game, @function
new21Game:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	DWORD PTR -68[rbp], edi
	mov	DWORD PTR -72[rbp], esi
	mov	DWORD PTR -76[rbp], edx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rsi, rax
	cmp	DWORD PTR -72[rbp], 0
	je	.L2
	mov	edx, DWORD PTR -72[rbp]
	mov	eax, DWORD PTR -76[rbp]
	add	eax, edx
	cmp	DWORD PTR -68[rbp], eax
	jl	.L3
.L2:
	movsd	xmm0, QWORD PTR .LC0[rip]
	jmp	.L4
.L3:
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -56[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -48[rbp], xmm0
	mov	eax, DWORD PTR -68[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -40[rbp], rdx
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	movsx	rdx, eax
	mov	rcx, rdx
	mov	ebx, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L5:
	cmp	rsp, rdx
	je	.L6
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L5
.L6:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L7
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L7:
	mov	rax, rsp
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR [rax], xmm0
	mov	DWORD PTR -60[rbp], 1
	jmp	.L8
.L12:
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -76[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	divsd	xmm0, xmm1
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	movsd	QWORD PTR [rax+rdx*8], xmm0
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	jge	.L9
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	movsd	xmm0, QWORD PTR [rax+rdx*8]
	movsd	xmm1, QWORD PTR -56[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	jmp	.L10
.L9:
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	movsd	xmm0, QWORD PTR [rax+rdx*8]
	movsd	xmm1, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
.L10:
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	jl	.L11
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, DWORD PTR -76[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	movsx	rdx, edx
	movsd	xmm1, QWORD PTR [rax+rdx*8]
	movsd	xmm0, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
.L11:
	add	DWORD PTR -60[rbp], 1
.L8:
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jle	.L12
	movsd	xmm0, QWORD PTR -48[rbp]
.L4:
	mov	rsp, rsi
	movq	rax, xmm0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	movq	xmm0, rax
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	new21Game, .-new21Game
	.section	.rodata
	.align 8
.LC0:
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
