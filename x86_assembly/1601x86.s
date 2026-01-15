	.text
	.p2align	4, 0x90                         # -- Begin function pattern_l
pattern_l:                              # @pattern_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_settop@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	getpatt@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pattern_l
	.addrsig_sym lua_settop
	.addrsig_sym getpatt