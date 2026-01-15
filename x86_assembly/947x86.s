	.text
	.p2align	4, 0x90                         # -- Begin function test_bool
test_bool:                              # @test_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$256, %edi                      # imm = 0x100
	callq	booltest1@PLT
	movl	%eax, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movl	$257, %edi                      # imm = 0x101
	callq	booltest1@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	$512, %edi                      # imm = 0x200
	callq	booltest2@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	$513, %edi                      # imm = 0x201
	callq	booltest2@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_bool
	.addrsig_sym expect
	.addrsig_sym booltest1
	.addrsig_sym booltest2