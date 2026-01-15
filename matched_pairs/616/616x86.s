	.text
	.p2align	4, 0x90                         # -- Begin function decToIntegral
decToIntegral:                          # @decToIntegral
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	DFWORD@PLT
	movl	%eax, -52(%rbp)
	movq	DECCOMBEXP(%rip), %rax
	movl	-52(%rbp), %ecx
	sarl	$26, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	EXPISSPECIAL@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	decNaNs@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decInfinity@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movq	-24(%rbp), %rdi
	callq	GETECON@PLT
	subq	DECBIAS(%rip), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jl	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	leaq	-64(%rbp), %rdi
	callq	decFloatZero@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	callq	decFloatQuantize@PLT
	movl	-56(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	-60(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECCOMBEXP
	.p2align	3
DECCOMBEXP:
	.quad	0
	.globl	DECBIAS
	.p2align	3
DECBIAS:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToIntegral
	.addrsig_sym DFWORD
	.addrsig_sym EXPISSPECIAL
	.addrsig_sym DFISNAN
	.addrsig_sym decNaNs
	.addrsig_sym decInfinity
	.addrsig_sym GETECON
	.addrsig_sym decCanonical
	.addrsig_sym decFloatZero
	.addrsig_sym decFloatQuantize
	.addrsig_sym DECCOMBEXP
	.addrsig_sym DECBIAS