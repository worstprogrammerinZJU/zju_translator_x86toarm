	.file	"2623.c"
	.intel_syntax noprefix
	.text
	.globl	median
	.bss
	.align 32
	.type	median, @object
	.size	median, 500004
median:
	.zero	500004
	.globl	N
	.align 4
	.type	N, @object
	.size	N, 4
N:
	.zero	4
	.text
	.globl	ADJUST
	.type	ADJUST, @function
ADJUST:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L3
	add	DWORD PTR -8[rbp], 1
.L3:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -8[rbp]
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, median[rip]
	mov	DWORD PTR [rcx+rdx], eax
	sal	DWORD PTR -8[rbp]
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L6
	jmp	.L5
.L7:
	nop
.L5:
	mov	eax, DWORD PTR -8[rbp]
	sar	eax
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, median[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
	.size	ADJUST, .-ADJUST
	.section	.rodata
.LC0:
	.string	"%d"
.LC2:
	.string	"%.1lf\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR N[rip]
	and	eax, 1
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR N[rip]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L10
.L9:
	mov	eax, DWORD PTR N[rip]
	add	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
.L10:
	mov	DWORD PTR -24[rbp], 1
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -24[rbp], 1
.L11:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L12
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -24[rbp], eax
	jmp	.L13
.L14:
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ADJUST
	sub	DWORD PTR -24[rbp], 1
.L13:
	cmp	DWORD PTR -24[rbp], 0
	jg	.L14
	mov	eax, DWORD PTR N[rip]
	sub	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L15
.L17:
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR median[rip+4]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jle	.L16
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR median[rip+4], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	edi, 1
	call	ADJUST
.L16:
	sub	DWORD PTR -24[rbp], 1
.L15:
	cmp	DWORD PTR -24[rbp], 0
	jg	.L17
	mov	eax, DWORD PTR median[rip+4]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR N[rip]
	and	eax, 1
	test	eax, eax
	jne	.L18
	mov	edx, DWORD PTR median[rip+8]
	mov	eax, DWORD PTR median[rip+12]
	cmp	edx, eax
	jle	.L19
	mov	eax, DWORD PTR median[rip+8]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR median[rip+12]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
.L18:
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1073741824
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
