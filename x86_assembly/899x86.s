	.text
	.globl	current_file                    # -- Begin function current_file
	.p2align	4, 0x90
current_file:                           # @current_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	files(%rip), %edi
	callq	vec_tail@PLT
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
	.addrsig_sym vec_tail
	.addrsig_sym files