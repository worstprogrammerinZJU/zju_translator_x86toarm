	.text
	.globl	__attachInterrupt               # -- Begin function __attachInterrupt
	.p2align	4, 0x90
__attachInterrupt:                      # @__attachInterrupt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	%eax, %esi
	movl	-20(%rbp), %ecx
	xorl	%eax, %eax
	movl	%eax, %edx
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