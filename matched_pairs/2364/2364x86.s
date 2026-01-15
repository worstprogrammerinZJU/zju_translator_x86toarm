	.text
	.p2align	4, 0x90                         # -- Begin function setup_array
setup_array:                            # @setup_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	av_sample_fmt_is_planar@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movl	-20(%rbp), %edi
	andl	$255, %edi
	callq	av_get_bytes_per_sample@PLT
	imull	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -28(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	SWR_CH_MAX(%rip), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SWR_CH_MAX
	.p2align	2
SWR_CH_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setup_array
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym SWR_CH_MAX