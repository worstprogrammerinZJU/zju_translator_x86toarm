	.text
	.globl	proxy_tokenize                  # -- Begin function proxy_tokenize
	.p2align	4, 0x90
proxy_tokenize:                         # @proxy_tokenize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-16(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	sql_tokens_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	sql_tokenizer@PLT
	movq	-8(%rbp), %rdi
	movl	$8, %esi
	callq	lua_newuserdata@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rdi
	callq	sql_tokenizer_lua_getmetatable@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setmetatable@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaL_checklstring
	.addrsig_sym sql_tokens_new
	.addrsig_sym sql_tokenizer
	.addrsig_sym lua_newuserdata
	.addrsig_sym sql_tokenizer_lua_getmetatable
	.addrsig_sym lua_setmetatable