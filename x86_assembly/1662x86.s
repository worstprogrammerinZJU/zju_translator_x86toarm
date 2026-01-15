	.text
	.p2align	4, 0x90                         # -- Begin function handle_sigterm_pid1
handle_sigterm_pid1:                    # @handle_sigterm_pid1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	SIGKILL(%rip), %edi
	callq	raise@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIGKILL
	.p2align	2
SIGKILL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_sigterm_pid1
	.addrsig_sym raise
	.addrsig_sym SIGKILL