	.text
	.p2align	4, 0x90                         # -- Begin function test_not
test_not:                               # @test_not
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_not
	.addrsig_sym expect