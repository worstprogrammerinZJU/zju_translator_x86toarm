	.text
	.p2align	2                               // -- Begin function push_st_rdev
	.type	push_st_rdev,@function
push_st_rdev:                           // @push_st_rdev
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
	.size	push_st_rdev, .Lfunc_end0-push_st_rdev
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_st_rdev
	.addrsig_sym lua_pushnumber