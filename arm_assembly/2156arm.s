	.text
	.p2align	2                               // -- Begin function sql_tokenizer_lua_getmetatable
	.type	sql_tokenizer_lua_getmetatable,@function
sql_tokenizer_lua_getmetatable:         // @sql_tokenizer_lua_getmetatable
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, sql_tokenizer_lua_getmetatable.methods
	add	x1, x1, :lo12:sql_tokenizer_lua_getmetatable.methods
	bl	proxy_getmetatable
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sql_tokenizer_lua_getmetatable, .Lfunc_end0-sql_tokenizer_lua_getmetatable
                                        // -- End function
	.type	sql_tokenizer_lua_getmetatable.methods,@object // @sql_tokenizer_lua_getmetatable.methods
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
sql_tokenizer_lua_getmetatable.methods:
	.xword	.L.str
	.xword	130
	.xword	.L.str.1
	.xword	128
	.xword	.L.str.2
	.xword	129
	.xword	.L.str.3
	.xword	131
	.zero	16
	.size	sql_tokenizer_lua_getmetatable.methods, 80
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__index"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"__newindex"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"__len"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"__gc"
	.size	.L.str.3, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sql_tokenizer_lua_getmetatable
	.addrsig_sym proxy_getmetatable
	.addrsig_sym sql_tokenizer_lua_getmetatable.methods