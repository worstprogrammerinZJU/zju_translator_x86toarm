	.text
	.globl	ctresettimer                    # -- Begin function ctresettimer
	.p2align	4, 0x90
ctresettimer:                           # @ctresettimer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, bdur(%rip)
	movb	$0, %al
	callq	nstime@PLT
	movl	%eax, bstart(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	bdur
	.p2align	3
bdur:
	.quad	0                               # 0x0
	.globl	bstart
	.p2align	2
bstart:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym bdur
	.addrsig_sym bstart