	.text
	.globl	ctstarttimer                    # -- Begin function ctstarttimer
	.p2align	4, 0x90
ctstarttimer:                           # @ctstarttimer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, btiming(%rip)
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	nstime@PLT
	movl	%eax, bstart(%rip)
	movl	$1, btiming(%rip)
.LBB0_2:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	btiming
	.p2align	2
btiming:
	.long	0                               # 0x0
	.globl	bstart
	.p2align	2
bstart:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym btiming
	.addrsig_sym bstart