	.text
	.p2align	2                               // -- Begin function type_l
	.type	type_l,@function
type_l:                                 // @type_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	testpattern
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushliteral
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	lua_pushnil
	b	.LBB0_3
.LBB0_3:
	mov	w0, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	type_l, .Lfunc_end0-type_l
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pattern"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_l
	.addrsig_sym testpattern
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_pushnil