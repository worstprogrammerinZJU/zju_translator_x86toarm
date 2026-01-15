	.text
	.globl	ctfailnow                       # -- Begin function ctfailnow
	.p2align	4, 0x90
ctfailnow:                              # @ctfailnow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	fflush@PLT
	movb	$0, %al
	callq	abort@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fflush
	.addrsig_sym abort