	.text
	.p2align	4, 0x90                         # -- Begin function test_primitive
test_primitive:                         # @test_primitive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$59, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$59, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_primitive
	.addrsig_sym expect