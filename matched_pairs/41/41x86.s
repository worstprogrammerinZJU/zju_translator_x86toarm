	.text
	.p2align	4, 0x90                         # -- Begin function test_inc_dec
test_inc_dec:                           # @test_inc_dec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$15, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	$15, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$16, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	%esi, %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	movl	$16, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$15, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -4(%rbp)
	movl	$14, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$14, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -4(%rbp)
	movl	$15, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$15, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_inc_dec
	.addrsig_sym expect