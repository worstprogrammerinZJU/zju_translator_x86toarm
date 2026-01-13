	.text
	.p2align	2                               // -- Begin function proxy_tokenize_gc
	.type	proxy_tokenize_gc,@function
proxy_tokenize_gc:                      // @proxy_tokenize_gc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	luaL_checkself
	ldr	x8, [x0]
	str	x8, [sp]
	ldr	x0, [sp]
	bl	sql_tokens_free
	mov	w0, wzr
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	proxy_tokenize_gc, .Lfunc_end0-proxy_tokenize_gc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_gc
	.addrsig_sym luaL_checkself
	.addrsig_sym sql_tokens_free