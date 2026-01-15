	.text
	.p2align	4, 0x90                         # -- Begin function lua_g_usleep
lua_g_usleep:                           # @lua_g_usleep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkinteger@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	g_usleep@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_g_usleep
	.addrsig_sym luaL_checkinteger
	.addrsig_sym g_usleep