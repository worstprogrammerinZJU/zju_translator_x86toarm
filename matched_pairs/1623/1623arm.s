	.text
	.p2align	2                               // -- Begin function simplecap
	.type	simplecap,@function
simplecap:                              // @simplecap
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	lua_pushnil
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	pushallcaptures
	str	w0, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	w8, [sp, #4]
	add	w9, w8, #1
	mov	w8, wzr
	subs	w1, w8, w9
	bl	lua_replace
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	simplecap, .Lfunc_end0-simplecap
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym simplecap
	.addrsig_sym lua_pushnil
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_replace