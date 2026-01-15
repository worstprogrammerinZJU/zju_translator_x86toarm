	.text
	.p2align	4, 0x90                         # -- Begin function get_out_samples
get_out_samples:                        # @get_out_samples
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	addq	$2, %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	imull	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movslq	-36(%rbp), %rax
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	imull	(%rax), %edx
	movl	AV_ROUND_UP(%rip), %ecx
	callq	av_rescale_rnd@PLT
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_4
# %bb.1:
	movl	-36(%rbp), %eax
	cmpl	INT_MAX(%rip), %eax
	jle	.LBB0_3
# %bb.2:
	movl	EINVAL(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movl	-36(%rbp), %edi
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	4(%rcx), %eax
	subl	$1, %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	8(%rcx)
	movl	%eax, %esi
	addl	$1, %esi
	callq	FFMAX@PLT
	movl	%eax, -36(%rbp)
.LBB0_4:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AV_ROUND_UP
	.p2align	2
AV_ROUND_UP:
	.long	0                               # 0x0
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_out_samples
	.addrsig_sym av_rescale_rnd
	.addrsig_sym AVERROR
	.addrsig_sym FFMAX
	.addrsig_sym AV_ROUND_UP
	.addrsig_sym INT_MAX
	.addrsig_sym EINVAL