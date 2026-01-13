	.text
	.globl	proxy_tokenize                  // -- Begin function proxy_tokenize
	.p2align	2
	.type	proxy_tokenize,@function
proxy_tokenize:                         // @proxy_tokenize
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	sub	x2, x29, #16
	bl	luaL_checklstring
	str	x0, [sp, #24]
	bl	sql_tokens_new
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-16]
	bl	sql_tokenizer
	ldur	x0, [x29, #-8]
	mov	w1, #8
	bl	lua_newuserdata
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	bl	sql_tokenizer_lua_getmetatable
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_setmetatable
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	proxy_tokenize, .Lfunc_end0-proxy_tokenize
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaL_checklstring
	.addrsig_sym sql_tokens_new
	.addrsig_sym sql_tokenizer
	.addrsig_sym lua_newuserdata
	.addrsig_sym sql_tokenizer_lua_getmetatable
	.addrsig_sym lua_setmetatable