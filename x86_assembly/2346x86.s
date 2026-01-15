	.text
	.p2align	4, 0x90                         # -- Begin function empty_struct
empty_struct:                           # @empty_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym empty_struct
	.addrsig_sym expect