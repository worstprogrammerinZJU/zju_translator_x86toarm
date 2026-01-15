	.text
	.p2align	2                               // -- Begin function proxy_tokenize_set
	.type	proxy_tokenize_set,@function
proxy_tokenize_set:                     // @proxy_tokenize_set
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
	ldur	x0, [x29, #-16]
	adrp	x8, LUA_TNIL
	ldr	w2, [x8, :lo12:LUA_TNIL]
	mov	w1, #3
	bl	luaL_checktype
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
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #8]
	bl	sql_token_free
	ldr	x8, [sp, #24]
	ldr	x9, [x8, #8]
	ldr	w8, [sp, #20]
	subs	w10, w8, #1
	mov	x8, xzr
	str	x8, [x9, w10, sxtw #3]
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	proxy_tokenize_set, .Lfunc_end0-proxy_tokenize_set
                                        // -- End function
	.type	LUA_TNIL,@object                // @LUA_TNIL
	.bss
	.globl	LUA_TNIL
	.p2align	2
LUA_TNIL:
	.word	0                               // 0x0
	.size	LUA_TNIL, 4
	.type	G_MAXINT,@object                // @G_MAXINT
	.globl	G_MAXINT
	.p2align	3
G_MAXINT:
	.xword	0                               // 0x0
	.size	G_MAXINT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_set
	.addrsig_sym luaL_checkself
	.addrsig_sym luaL_checkinteger
	.addrsig_sym luaL_checktype
	.addrsig_sym sql_token_free
	.addrsig_sym LUA_TNIL
	.addrsig_sym G_MAXINT