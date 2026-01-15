	.text
	.globl	stream_unstash                  # -- Begin function stream_unstash
	.p2align	4, 0x90
stream_unstash:                         # @stream_unstash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	stashed(%rip), %edi
	callq	vec_pop@PLT
	movl	%eax, files(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stashed
	.p2align	2
stashed:
	.long	0                               # 0x0
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_pop
	.addrsig_sym stashed
	.addrsig_sym files