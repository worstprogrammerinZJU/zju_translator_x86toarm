	.text
	.p2align	4, 0x90                         # -- Begin function write16
write16:                                # @write16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	andl	$255, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$8, %esi
	callq	buf_write@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write16
	.addrsig_sym buf_write