	.text
	.globl	decNumberNextMinus              # -- Begin function decNumberNextMinus
	.p2align	4, 0x90
decNumberNextMinus:                     # @decNumberNextMinus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	DECINF(%rip), %ecx
	orl	DECNEG(%rip), %ecx
	andl	%ecx, %eax
	cmpl	DECINF(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	decSetMaxValue@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	leaq	-56(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	movq	DEC_MIN_EMIN(%rip), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	DEC_ROUND_FLOOR(%rip), %eax
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	DECNEG(%rip), %r8d
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-68(%rbp), %r9
	callq	decAddOp@PLT
	movl	DEC_Invalid_operation(%rip), %eax
	orl	DEC_sNaN(%rip), %eax
	andl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECINF
	.p2align	2
DECINF:
	.long	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	DEC_MIN_EMIN
	.p2align	3
DEC_MIN_EMIN:
	.quad	0                               # 0x0
	.globl	DEC_ROUND_FLOOR
	.p2align	2
DEC_ROUND_FLOOR:
	.long	0                               # 0x0
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.globl	DEC_sNaN
	.p2align	2
DEC_sNaN:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decSetMaxValue
	.addrsig_sym decNumberZero
	.addrsig_sym decAddOp
	.addrsig_sym decStatus
	.addrsig_sym DECINF
	.addrsig_sym DECNEG
	.addrsig_sym DEC_MIN_EMIN
	.addrsig_sym DEC_ROUND_FLOOR
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN