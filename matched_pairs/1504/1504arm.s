	.text
	.p2align	2                               // -- Begin function push_st_ctime
	.type	push_st_ctime,@function
push_st_ctime:                          // @push_st_ctime
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	w1, [x8]
	bl	lua_pushnumber
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	push_st_ctime, .Lfunc_end0-push_st_ctime
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_st_ctime
	.addrsig_sym lua_pushnumber