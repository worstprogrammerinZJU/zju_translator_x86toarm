	.text
	.globl	sql_tokenizer_lua_token_getmetatable // -- Begin function sql_tokenizer_lua_token_getmetatable
	.p2align	2
	.type	sql_tokenizer_lua_token_getmetatable,@function
sql_tokenizer_lua_token_getmetatable:   // @sql_tokenizer_lua_token_getmetatable
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, sql_tokenizer_lua_token_getmetatable.methods
	add	x1, x1, :lo12:sql_tokenizer_lua_token_getmetatable.methods
	bl	proxy_getmetatable
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sql_tokenizer_lua_token_getmetatable, .Lfunc_end0-sql_tokenizer_lua_token_getmetatable
                                        // -- End function
	.type	sql_tokenizer_lua_token_getmetatable.methods,@object // @sql_tokenizer_lua_token_getmetatable.methods
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
sql_tokenizer_lua_token_getmetatable.methods:
	.xword	.L.str
	.xword	128
	.zero	16
	.size	sql_tokenizer_lua_token_getmetatable.methods, 32
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__index"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_getmetatable
	.addrsig_sym sql_tokenizer_lua_token_getmetatable.methods