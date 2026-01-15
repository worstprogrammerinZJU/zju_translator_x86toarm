	.text
	.p2align	4, 0x90                         # -- Begin function assert_true2
assert_true2:                           # @assert_true2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d: assert_true: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert_true2
	.addrsig_sym error