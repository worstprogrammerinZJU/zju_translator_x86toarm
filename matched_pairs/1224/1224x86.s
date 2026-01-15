	.text
	.globl	jv_invalid                      # -- Begin function jv_invalid
	.p2align	4, 0x90
jv_invalid:                             # @jv_invalid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	JV_INVALID(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_INVALID
	.p2align	2
JV_INVALID:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_INVALID