	.text
	.p2align	4, 0x90                         # -- Begin function proxy_tokenize_len
proxy_tokenize_len:                     # @proxy_tokenize_len
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	luaL_checkself@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	lua_pushinteger@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_len
	.addrsig_sym luaL_checkself
	.addrsig_sym lua_pushinteger