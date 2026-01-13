	.text
	.p2align	2                               // -- Begin function proxy_tokenize_get
	.type	proxy_tokenize_get,@function
proxy_tokenize_get:                     // @proxy_tokenize_get
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	luaL_checkself
	ldr	x8, [x0]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	luaL_checkinteger
	str	w0, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, G_MAXINT
	ldr	x9, [x9, :lo12:G_MAXINT]
	subs	x8, x8, x9
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_8
.LBB0_2:
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	b.lt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
                                        // kill: def $w9 killed $w9 killed $x9
	subs	w8, w8, w9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_8
.LBB0_5:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_7:
	ldur	x0, [x29, #-16]
	mov	w1, #8
	bl	lua_newuserdata
	str	x0, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldur	x0, [x29, #-16]
	bl	sql_tokenizer_lua_token_getmetatable
	ldur	x0, [x29, #-16]
	mov	w1, #-2
	bl	lua_setmetatable
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	proxy_tokenize_get, .Lfunc_end0-proxy_tokenize_get
                                        // -- End function
	.type	G_MAXINT,@object                // @G_MAXINT
	.bss
	.globl	G_MAXINT
	.p2align	3
G_MAXINT:
	.xword	0                               // 0x0
	.size	G_MAXINT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_get
	.addrsig_sym luaL_checkself
	.addrsig_sym luaL_checkinteger
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_newuserdata
	.addrsig_sym sql_tokenizer_lua_token_getmetatable
	.addrsig_sym lua_setmetatable
	.addrsig_sym G_MAXINT