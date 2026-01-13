	.text
	.p2align	2                               // -- Begin function proxy_tokenize_token_get
	.type	proxy_tokenize_token_get,@function
proxy_tokenize_token_get:               // @proxy_tokenize_token_get
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	luaL_checkself
	ldr	x8, [x0]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-16]
	mov	w1, #2
	sub	x2, x29, #32
	bl	luaL_checklstring
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	C
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	bl	strleq
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w0, [x8, #4]
	bl	S
	mov	w9, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x1, w8
	bl	lua_pushlstring
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	C
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	strleq
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	w1, [x8]
	bl	lua_pushinteger
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_4:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	C
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	strleq
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	sub	x1, x29, #48
	stur	xzr, [x29, #-48]
	ldur	x8, [x29, #-24]
	ldr	w0, [x8]
	bl	sql_token_get_name
	str	x0, [sp, #56]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #56]
	ldur	x2, [x29, #-48]
	bl	lua_pushlstring
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-40]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	luaL_error
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	proxy_tokenize_token_get, .Lfunc_end0-proxy_tokenize_token_get
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"text"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"token_id"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"token_name"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"tokens[...] has no %s field"
	.size	.L.str.3, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_token_get
	.addrsig_sym luaL_checkself
	.addrsig_sym luaL_checklstring
	.addrsig_sym strleq
	.addrsig_sym C
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym lua_pushinteger
	.addrsig_sym sql_token_get_name
	.addrsig_sym luaL_error