	.text
	.globl	__attachInterruptArg            # -- Begin function __attachInterruptArg
	.p2align	4, 0x90
__attachInterruptArg:                   # @__attachInterruptArg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	xorl	%r8d, %r8d
	callq	__attachInterruptFunctionalArg@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __attachInterruptFunctionalArg