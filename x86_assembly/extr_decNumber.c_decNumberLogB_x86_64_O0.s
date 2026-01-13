	.text
	.globl	decNumberLogB                   # -- Begin function decNumberLogB
	.p2align	4, 0x90
decNumberLogB:                          # @decNumberLogB
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-28(%rbp), %r8
	callq	decNaNs@PLT
	jmp	.LBB0_12
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	decNumberCopyAbs@PLT
	jmp	.LBB0_11
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	decNumberIsZero@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	callq	decNumberZero@PLT
	movl	DECNEG(%rip), %ecx
	orl	DECINF(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	DEC_Division_by_zero(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	8(%rcx), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$10, (%rax)
	jl	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decNumberFromInt32@PLT
	jmp	.LBB0_9
.LBB0_8:
	movl	$10, %edi
	callq	D2N@PLT
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rsp, %rax
	movq	%rax, -48(%rbp)
	leaq	(%rcx,%rcx,2), %rax
	leaq	15(,%rax,8), %rdx
	movabsq	$274877906928, %rax             # imm = 0x3FFFFFFFF0
	andq	%rax, %rdx
	movq	%rsp, %rax
	subq	%rdx, %rax
	movq	%rax, %rsp
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decNumberFromInt32@PLT
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	decNumberPlus@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rsp
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	cmpl	$0, -28(%rbp)
	je	.LBB0_14
# %bb.13:
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_14:
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	DECINF
	.p2align	2
DECINF:
	.long	0                               # 0x0
	.globl	DEC_Division_by_zero
	.p2align	2
DEC_Division_by_zero:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNaNs
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberCopyAbs
	.addrsig_sym decNumberIsZero
	.addrsig_sym decNumberZero
	.addrsig_sym decNumberFromInt32
	.addrsig_sym D2N
	.addrsig_sym decNumberPlus
	.addrsig_sym decStatus
	.addrsig_sym DECNEG
	.addrsig_sym DECINF
	.addrsig_sym DEC_Division_by_zero