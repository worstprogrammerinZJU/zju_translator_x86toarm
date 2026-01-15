	.text
	.p2align	4, 0x90                         # -- Begin function test_char
test_char:                              # @test_char
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$65, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$97, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$7, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$12, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$10, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$13, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$9, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$11, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$27, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$7, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$15, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4294967197, %esi               # imm = 0xFFFFFF9D
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	movl	%esi, %edi
	callq	expect@PLT
	movl	$15, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$18, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_char
	.addrsig_sym expect