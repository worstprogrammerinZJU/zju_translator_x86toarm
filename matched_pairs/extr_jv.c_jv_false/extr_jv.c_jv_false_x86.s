	.text
	.globl	jv_false                        # -- Begin function jv_false
	.p2align	4, 0x90
jv_false:                               # @jv_false
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	JV_FALSE(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_FALSE
	.p2align	2
JV_FALSE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_FALSE