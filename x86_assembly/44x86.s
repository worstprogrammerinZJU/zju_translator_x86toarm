	.text
	.p2align	4, 0x90                         # -- Begin function test_unary
test_unary:                             # @test_unary
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$2, -1(%rbp)
	movw	$2, -4(%rbp)
	movl	$2, -8(%rbp)
	movsbl	-1(%rbp), %eax
	xorl	%esi, %esi
	subl	%eax, %esi
	movl	$4294967294, %edi               # imm = 0xFFFFFFFE
	callq	expect@PLT
	movswl	-4(%rbp), %eax
	xorl	%esi, %esi
	subl	%eax, %esi
	movl	$4294967294, %edi               # imm = 0xFFFFFFFE
	callq	expect@PLT
	xorl	%esi, %esi
	subl	-8(%rbp), %esi
	movl	$4294967294, %edi               # imm = 0xFFFFFFFE
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unary
	.addrsig_sym expect