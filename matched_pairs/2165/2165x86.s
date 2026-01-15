	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bit_reverse
stbi__bit_reverse:                      # @stbi__bit_reverse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$16, -8(%rbp)
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movl	-4(%rbp), %edi
	callq	stbi__bitreverse16@PLT
	movl	$16, %ecx
	subl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bit_reverse
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__bitreverse16