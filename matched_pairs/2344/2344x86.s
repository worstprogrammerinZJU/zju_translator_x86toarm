	.text
	.p2align	4, 0x90                         # -- Begin function bitfield_union
bitfield_union:                         # @bitfield_union
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	-8(%rbp), %ax
	andw	$-1024, %ax                     # imm = 0xFC00
	orw	$2, %ax
	movw	%ax, -8(%rbp)
	movw	-8(%rbp), %ax
	shlw	$6, %ax
	sarw	$6, %ax
	movswl	%ax, %esi
	movl	$2, %edi
	callq	expect@PLT
	movb	-8(%rbp), %al
	shlb	$3, %al
	sarb	$3, %al
	movsbl	%al, %esi
	movl	$2, %edi
	callq	expect@PLT
	movb	-8(%rbp), %al
	shlb	$3, %al
	sarb	$3, %al
	movsbl	%al, %esi
	movl	$2, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_union
	.addrsig_sym expect