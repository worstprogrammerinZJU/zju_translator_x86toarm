	.text
	.globl	make_vector1                    # -- Begin function make_vector1
	.p2align	4, 0x90
make_vector1:                           # @make_vector1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	callq	do_make_vector@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	vec_push@PLT
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector
	.addrsig_sym vec_push