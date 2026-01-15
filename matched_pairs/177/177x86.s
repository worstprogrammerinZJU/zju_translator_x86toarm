	.text
	.p2align	4, 0x90                         # -- Begin function f_nan
f_nan:                                  # @f_nan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	NAN(%rip), %edi
	callq	jv_number@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NAN
	.p2align	2
NAN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_nan
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym NAN