	.text
	.p2align	4, 0x90                         # -- Begin function do_make_map
do_make_map:                            # @do_make_map
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$48, %edi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 40(%rax)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 32(%rax)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_map
	.addrsig_sym malloc
	.addrsig_sym calloc