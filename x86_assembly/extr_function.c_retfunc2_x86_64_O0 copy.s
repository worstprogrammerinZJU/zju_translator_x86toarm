	.text
	.p2align	4, 0x90                         # -- Begin function retfunc2
retfunc2:                               # @retfunc2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	t6(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	t6
	.p2align	2
t6:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym retfunc2
	.addrsig_sym t6