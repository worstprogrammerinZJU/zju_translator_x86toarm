	.text
	.globl	ltoa                            # -- Begin function ltoa
	.p2align	4, 0x90
ltoa:                                   # @ltoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$2, -28(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$16, -28(%rbp)
	jle	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_3:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	abs@PLT
	movq	%rax, -48(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	%rdx, %rax
	subq	%rax, %rcx
	leaq	.L.str(%rip), %rax
	movb	(%rax,%rcx), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB0_4
# %bb.6:
	cmpq	$0, -16(%rbp)
	jge	.LBB0_8
# %bb.7:
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$45, (%rax)
.LBB0_8:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	reverse@PLT
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym abs
	.addrsig_sym reverse