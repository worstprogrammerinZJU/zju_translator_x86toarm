	.text
	.globl	token_buffer_unstash            # -- Begin function token_buffer_unstash
	.p2align	4, 0x90
token_buffer_unstash:                   # @token_buffer_unstash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	buffers(%rip), %edi
	callq	vec_pop@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	buffers
	.p2align	2
buffers:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_pop
	.addrsig_sym buffers