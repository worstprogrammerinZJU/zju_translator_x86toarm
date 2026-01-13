	.text
	.p2align	4, 0x90                         # -- Begin function mark
mark:                                   # @mark
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edi, %edi
	callq	get_pos@PLT
	movl	%eax, pos(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	pos
	.p2align	2
pos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mark
	.addrsig_sym get_pos
	.addrsig_sym pos