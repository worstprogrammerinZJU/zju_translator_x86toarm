	.text
	.p2align	4, 0x90                         # -- Begin function test_unsignedcast
test_unsignedcast:                      # @test_unsignedcast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$-1, -1(%rbp)
	movzbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unsignedcast
	.addrsig_sym expect