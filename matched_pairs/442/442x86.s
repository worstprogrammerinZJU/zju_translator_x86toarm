	.text
	.p2align	4, 0x90                         # -- Begin function read_if
read_if:                                # @read_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	read_constexpr@PLT
	movl	%eax, %edi
	callq	do_read_if@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_if
	.addrsig_sym do_read_if
	.addrsig_sym read_constexpr