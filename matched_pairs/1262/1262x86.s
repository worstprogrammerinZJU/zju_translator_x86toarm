	.text
	.globl	jv_true                         # -- Begin function jv_true
	.p2align	4, 0x90
jv_true:                                # @jv_true
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	JV_TRUE(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_TRUE
	.p2align	2
JV_TRUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_TRUE