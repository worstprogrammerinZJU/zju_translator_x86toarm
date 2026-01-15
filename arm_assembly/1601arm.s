	.text
	.p2align	2                               // -- Begin function pattern_l
	.type	pattern_l,@function
pattern_l:                              // @pattern_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	lua_settop
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [sp, #8]
	mov	x2, xzr
	bl	getpatt
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	pattern_l, .Lfunc_end0-pattern_l
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pattern_l
	.addrsig_sym lua_settop
	.addrsig_sym getpatt