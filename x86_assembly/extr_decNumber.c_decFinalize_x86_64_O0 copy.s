	.text
	.p2align	4, 0x90                         # -- Begin function decFinalize
decFinalize:                            # @decFinalize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	subq	(%rcx), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB0_9
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	decSetSubnormal@PLT
	jmp	.LBB0_20
.LBB0_3:
	leaq	-80(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	callq	decCompare@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	BADINT(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movl	DEC_Insufficient_storage(%rip), %ecx
	movq	-32(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_20
.LBB0_5:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jge	.LBB0_8
# %bb.6:
	cmpq	$0, -56(%rbp)
	jne	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	callq	decApplyRound@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	decSetSubnormal@PLT
	jmp	.LBB0_20
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	callq	decApplyRound@PLT
.LBB0_11:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	16(%rdx), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_13
# %bb.12:
	jmp	.LBB0_20
.LBB0_13:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	subq	(%rdx), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_15
# %bb.14:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	decSetOverflow@PLT
	jmp	.LBB0_20
.LBB0_15:
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB0_17
# %bb.16:
	jmp	.LBB0_20
.LBB0_17:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	16(%rdx), %rcx
	addq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	ISZERO@PLT
	cmpl	$0, %eax
	jne	.LBB0_19
# %bb.18:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	decShiftToMost@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_19:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	subq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	movl	DEC_Clamped(%rip), %ecx
	movq	-32(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_20:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	BADINT
	.p2align	3
BADINT:
	.quad	0                               # 0x0
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.long	0                               # 0x0
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decFinalize
	.addrsig_sym decSetSubnormal
	.addrsig_sym decNumberZero
	.addrsig_sym decCompare
	.addrsig_sym decApplyRound
	.addrsig_sym decSetOverflow
	.addrsig_sym ISZERO
	.addrsig_sym decShiftToMost
	.addrsig_sym BADINT
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Clamped