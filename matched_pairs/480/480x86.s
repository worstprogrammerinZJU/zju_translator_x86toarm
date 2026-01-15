	.text
	.globl	ctstoptimer                     # -- Begin function ctstoptimer
	.p2align	4, 0x90
ctstoptimer:                            # @ctstoptimer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, btiming(%rip)
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	nstime@PLT
	movq	%rax, %rcx
	subq	bstart(%rip), %rcx
	movslq	bdur(%rip), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, bdur(%rip)
	movq	$0, btiming(%rip)
.LBB0_2:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	btiming
	.p2align	3
btiming:
	.quad	0                               # 0x0
	.globl	bstart
	.p2align	3
bstart:
	.quad	0                               # 0x0
	.globl	bdur
	.p2align	2
bdur:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym btiming
	.addrsig_sym bstart
	.addrsig_sym bdur