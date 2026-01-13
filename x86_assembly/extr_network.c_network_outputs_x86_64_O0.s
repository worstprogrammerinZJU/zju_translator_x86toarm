	.text
	.globl	network_outputs                 # -- Begin function network_outputs
	.p2align	4, 0x90
network_outputs:                        # @network_outputs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	network_output_layer@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_output_layer