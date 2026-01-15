	.text
	.p2align	4, 0x90                         # -- Begin function jvp_clamp_slice_params
jvp_clamp_slice_params:                 # @jvp_clamp_slice_params
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB0_4
# %bb.3:
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.LBB0_8
# %bb.7:
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.LBB0_10
# %bb.9:
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_12:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_clamp_slice_params