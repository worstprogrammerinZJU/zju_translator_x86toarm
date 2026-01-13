	.text
	.p2align	4, 0x90                         # -- Begin function f_infinite
f_infinite:                             # @f_infinite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	INFINITY(%rip), %edi
	callq	jv_number@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INFINITY
	.p2align	2
INFINITY:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_infinite
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym INFINITY