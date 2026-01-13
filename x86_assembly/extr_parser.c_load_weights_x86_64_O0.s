	.text
	.globl	load_weights                    # -- Begin function load_weights
	.p2align	4, 0x90
load_weights:                           # @load_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	xorl	%edx, %edx
	callq	load_weights_upto@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_weights_upto