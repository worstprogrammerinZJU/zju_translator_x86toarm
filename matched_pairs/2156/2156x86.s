	.text
	.p2align	4, 0x90                         # -- Begin function sql_tokenizer_lua_getmetatable
sql_tokenizer_lua_getmetatable:         # @sql_tokenizer_lua_getmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	sql_tokenizer_lua_getmetatable.methods(%rip), %rsi
	callq	proxy_getmetatable@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
sql_tokenizer_lua_getmetatable.methods:
	.quad	.L.str
	.quad	130
	.quad	.L.str.1
	.quad	128
	.quad	.L.str.2
	.quad	129
	.quad	.L.str.3
	.quad	131
	.zero	16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__index"
.L.str.1:
	.asciz	"__newindex"
.L.str.2:
	.asciz	"__len"
.L.str.3:
	.asciz	"__gc"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sql_tokenizer_lua_getmetatable
	.addrsig_sym proxy_getmetatable
	.addrsig_sym sql_tokenizer_lua_getmetatable.methods