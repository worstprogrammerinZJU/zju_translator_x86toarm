	.text
	.p2align	4, 0x90                         # -- Begin function config_changed
config_changed:                         # @config_changed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_4
# %bb.2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB0_5
.LBB0_4:
	movl	AVERROR_INPUT_CHANGED(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	cmpq	$0, -16(%rbp)
	je	.LBB0_12
# %bb.7:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_10
# %bb.8:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB0_11
.LBB0_10:
	movl	AVERROR_OUTPUT_CHANGED(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	-28(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AVERROR_INPUT_CHANGED
	.p2align	2
AVERROR_INPUT_CHANGED:
	.long	0                               # 0x0
	.globl	AVERROR_OUTPUT_CHANGED
	.p2align	2
AVERROR_OUTPUT_CHANGED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym config_changed
	.addrsig_sym AVERROR_INPUT_CHANGED
	.addrsig_sym AVERROR_OUTPUT_CHANGED