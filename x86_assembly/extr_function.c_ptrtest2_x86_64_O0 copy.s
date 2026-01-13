	.text
	.globl	ptrtest2                        # -- Begin function ptrtest2
	.p2align	4, 0x90
ptrtest2:                               # @ptrtest2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shll	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig