	.text
	.p2align	2                               // -- Begin function push_st_blocks
	.type	push_st_blocks,@function
push_st_blocks:                         // @push_st_blocks
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	mov	w1, w8
	bl	lua_pushnumber
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	push_st_blocks, .Lfunc_end0-push_st_blocks
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_st_blocks
	.addrsig_sym lua_pushnumber