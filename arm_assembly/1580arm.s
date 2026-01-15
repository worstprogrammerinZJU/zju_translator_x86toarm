	.text
	.p2align	2                               // -- Begin function getposition
	.type	getposition,@function
getposition:                            // @getposition
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	bl	lua_getfenv
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldr	w2, [sp, #24]
	bl	lua_rawgeti
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	lua_gettable
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	lua_tointeger
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldr	w2, [sp, #24]
	mov	w1, #-2
	bl	lua_rawgeti
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	bl	val2str
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	lua_pop
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	getposition, .Lfunc_end0-getposition
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s is not defined in given grammar"
	.size	.L.str, 35
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getposition
	.addrsig_sym lua_getfenv
	.addrsig_sym lua_rawgeti
	.addrsig_sym lua_gettable
	.addrsig_sym lua_tointeger
	.addrsig_sym luaL_error
	.addrsig_sym val2str
	.addrsig_sym lua_pop