	.text
	.globl	error                           # -- Begin function error
	.p2align	4, 0x90
error:                                  # @error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	assert@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym perror
	.addrsig_sym assert
	.addrsig_sym exit