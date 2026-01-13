	.text
	.globl	stream_depth                    # -- Begin function stream_depth
	.p2align	4, 0x90
stream_depth:                           # @stream_depth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	files(%rip), %edi
	callq	vec_len@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_len
	.addrsig_sym files