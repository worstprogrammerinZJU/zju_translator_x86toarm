	.text
	.p2align	4, 0x90                         # -- Begin function assert_null2
assert_null2:                           # @assert_null2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d: Null expected"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert_null2
	.addrsig_sym error