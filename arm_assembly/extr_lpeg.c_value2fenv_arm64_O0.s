	.text
	.p2align	2                               // -- Begin function value2fenv
	.type	value2fenv,@function
value2fenv:                             // @value2fenv
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	mov	w2, wzr
	bl	lua_createtable
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_pushvalue
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	lua_rawseti
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	lua_setfenv
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	value2fenv, .Lfunc_end0-value2fenv
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym value2fenv
	.addrsig_sym lua_createtable
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_rawseti
	.addrsig_sym lua_setfenv