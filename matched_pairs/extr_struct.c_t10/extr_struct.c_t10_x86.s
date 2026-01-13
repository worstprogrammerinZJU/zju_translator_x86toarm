	.text
	.p2align	4, 0x90                         # -- Begin function t10
t10:                                    # @t10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$71, v10(%rip)
	movl	$3, v10+4(%rip)
	movl	$3, v10+8(%rip)
	movl	v10(%rip), %esi
	addl	v10+4(%rip), %esi
	addl	v10+8(%rip), %esi
	movl	$77, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	v10
	.p2align	2
v10:
	.zero	12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t10
	.addrsig_sym expect
	.addrsig_sym v10