	.text
	.p2align	4, 0x90                         # -- Begin function bitfield_basic
bitfield_basic:                         # @bitfield_basic
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movw	-8(%rbp), %ax
	andw	$-32, %ax
	orw	$10, %ax
	movw	%ax, -8(%rbp)
	movw	-8(%rbp), %ax
	andw	$-993, %ax                      # imm = 0xFC1F
	orw	$352, %ax                       # imm = 0x160
	movw	%ax, -8(%rbp)
	movw	-8(%rbp), %ax
	shlw	$11, %ax
	sarw	$11, %ax
	movswl	%ax, %esi
	movl	$10, %edi
	callq	expect@PLT
	movw	-8(%rbp), %ax
	shlw	$6, %ax
	sarw	$11, %ax
	movswl	%ax, %esi
	movl	$11, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$362, %edi                      # imm = 0x16A
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_basic
	.addrsig_sym expect