	.text
	.p2align	4, 0x90                         # -- Begin function test_bool
test_bool:                              # @test_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$1, -1(%rbp)
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movb	$1, -1(%rbp)
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movb	$1, -1(%rbp)
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movb	$0, -1(%rbp)
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_bool
	.addrsig_sym expect