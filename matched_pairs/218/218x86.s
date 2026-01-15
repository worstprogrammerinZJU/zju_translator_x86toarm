	.text
	.p2align	4, 0x90                         # -- Begin function test_signedcast
test_signedcast:                        # @test_signedcast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$-1, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_signedcast
	.addrsig_sym expect