	.text
	.p2align	4, 0x90                         # -- Begin function unm_l
unm_l:                                  # @unm_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_insert@PLT
	movq	-8(%rbp), %rdi
	callq	diff_l@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unm_l
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_insert
	.addrsig_sym diff_l