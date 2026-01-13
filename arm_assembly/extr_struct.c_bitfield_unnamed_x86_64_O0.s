	.text
	.p2align	4, 0x90                         # -- Begin function bitfield_unnamed
bitfield_unnamed:                       # @bitfield_unnamed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movl	$0, -8(%rbp)
	movw	-8(%rbp), %ax
	andw	$-16, %ax
	orw	$2, %ax
	movw	%ax, -8(%rbp)
	movw	-8(%rbp), %ax
	andw	$-241, %ax
	orw	$64, %ax
	movw	%ax, -8(%rbp)
	movw	-8(%rbp), %ax
	shlw	$12, %ax
	sarw	$12, %ax
                                        # kill: def $al killed $al killed $ax
	movsbl	%al, %esi
	movl	$2, %edi
	callq	expect@PLT
	movw	-8(%rbp), %ax
	shlw	$8, %ax
	sarw	$12, %ax
                                        # kill: def $al killed $al killed $ax
	movsbl	%al, %esi
	movl	$4, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$66, %edi
	callq	expect@PLT
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movb	-16(%rbp), %al
	andb	$-16, %al
	orb	$2, %al
	movb	%al, -16(%rbp)
	movb	-15(%rbp), %al
	andb	$-16, %al
	orb	$4, %al
	movb	%al, -15(%rbp)
	movb	-16(%rbp), %al
	shlb	$4, %al
	sarb	$4, %al
	movsbl	%al, %esi
	movl	$2, %edi
	callq	expect@PLT
	movb	-15(%rbp), %al
	shlb	$4, %al
	sarb	$4, %al
	movsbl	%al, %esi
	movl	$4, %edi
	callq	expect@PLT
	movl	-16(%rbp), %esi
	movl	$1026, %edi                     # imm = 0x402
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_unnamed
	.addrsig_sym expect