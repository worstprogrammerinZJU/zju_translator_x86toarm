	.text
	.p2align	2                               // -- Begin function val2str
	.type	val2str,@function
val2str:                                // @val2str
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	lua_tostring
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushfstring
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	bl	luaL_typename
	mov	x2, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	lua_pushfstring
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	val2str, .Lfunc_end0-val2str
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rule '%s'"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rule <a %s>"
	.size	.L.str.1, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym val2str
	.addrsig_sym lua_tostring
	.addrsig_sym lua_pushfstring
	.addrsig_sym luaL_typename