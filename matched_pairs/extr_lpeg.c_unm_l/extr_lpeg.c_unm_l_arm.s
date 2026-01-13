	.text
	.p2align	2                               // -- Begin function unm_l
	.type	unm_l,@function
unm_l:                                  // @unm_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushliteral
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	lua_insert
	ldr	x0, [sp, #8]
	bl	diff_l
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	unm_l, .Lfunc_end0-unm_l
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unm_l
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_insert
	.addrsig_sym diff_l