	.text
	.p2align	4, 0x90                         # -- Begin function write32
write32:                                # @write32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	andl	$65535, %esi                    # imm = 0xFFFF
	callq	write16@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$16, %esi
	callq	write16@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write32
	.addrsig_sym write16