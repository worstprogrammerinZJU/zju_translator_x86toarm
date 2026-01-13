	.text
	.p2align	4, 0x90                         # -- Begin function test_if
test_if:                                # @test_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	test_if1@PLT
	movl	%eax, %esi
	movl	$97, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if2@PLT
	movl	%eax, %esi
	movl	$98, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if3@PLT
	movl	%eax, %esi
	movl	$99, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if4@PLT
	movl	%eax, %esi
	movl	$100, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if5@PLT
	movl	%eax, %esi
	movl	$101, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if6@PLT
	movl	%eax, %esi
	movl	$102, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if7@PLT
	movl	%eax, %esi
	movl	$103, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if8@PLT
	movl	%eax, %esi
	movl	$104, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if9@PLT
	movl	%eax, %esi
	movl	$105, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if10@PLT
	movl	%eax, %esi
	movl	$106, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_if11@PLT
	movl	%eax, %esi
	movl	$107, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_if
	.addrsig_sym expect
	.addrsig_sym test_if1
	.addrsig_sym test_if2
	.addrsig_sym test_if3
	.addrsig_sym test_if4
	.addrsig_sym test_if5
	.addrsig_sym test_if6
	.addrsig_sym test_if7
	.addrsig_sym test_if8
	.addrsig_sym test_if9
	.addrsig_sym test_if10
	.addrsig_sym test_if11