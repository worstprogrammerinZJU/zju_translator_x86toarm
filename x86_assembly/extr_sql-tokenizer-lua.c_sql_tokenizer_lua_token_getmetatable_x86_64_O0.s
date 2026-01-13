	.text
	.globl	sql_tokenizer_lua_token_getmetatable # -- Begin function sql_tokenizer_lua_token_getmetatable
	.p2align	4, 0x90
sql_tokenizer_lua_token_getmetatable:   # @sql_tokenizer_lua_token_getmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	sql_tokenizer_lua_token_getmetatable.methods(%rip), %rsi
	callq	proxy_getmetatable@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
sql_tokenizer_lua_token_getmetatable.methods:
	.quad	.L.str
	.quad	128
	.zero	16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__index"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_getmetatable
	.addrsig_sym sql_tokenizer_lua_token_getmetatable.methods