	.text
	.globl	cttest_unix_auto_removal        # -- Begin function cttest_unix_auto_removal
	.p2align	4, 0x90
cttest_unix_auto_removal:               # @cttest_unix_auto_removal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	SERVER_UNIX@PLT
	movb	$0, %al
	callq	kill_srvpid@PLT
	movb	$0, %al
	callq	SERVER_UNIX@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER_UNIX
	.addrsig_sym kill_srvpid