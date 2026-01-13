	.text
	.p2align	2                               // -- Begin function push_st_mode
	.type	push_st_mode,@function
push_st_mode:                           // @push_st_mode
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	mode2string
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_pushstring
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	push_st_mode, .Lfunc_end0-push_st_mode
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_st_mode
	.addrsig_sym lua_pushstring
	.addrsig_sym mode2string