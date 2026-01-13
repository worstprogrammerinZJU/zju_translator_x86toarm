	.text
	.globl	jv_null                         # -- Begin function jv_null
	.p2align	4, 0x90
jv_null:                                # @jv_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	JV_NULL(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_NULL
	.p2align	2
JV_NULL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_NULL