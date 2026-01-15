	.text
	.p2align	4, 0x90                         # -- Begin function test_basic
test_basic:                             # @test_basic
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$10, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$11, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$14, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$98, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$-1, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	expect@PLT
	movl	-4(%rbp), %esi
	addl	$1, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_basic
	.addrsig_sym expect