	.text
	.p2align	4, 0x90                         # -- Begin function assert_int2
assert_int2:                            # @assert_int2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	error@PLT
.LBB0_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d: Expected %ld but got %ld"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert_int2
	.addrsig_sym error