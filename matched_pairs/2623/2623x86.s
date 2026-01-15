	.text
	.p2align	4, 0x90                         # -- Begin function do_make_vector
do_make_vector:                         # @do_make_vector
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	roundup@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB0_2
# %bb.1:
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edi
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector
	.addrsig_sym malloc
	.addrsig_sym roundup