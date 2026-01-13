	.text
	.p2align	2                               // -- Begin function lua_password_check
	.type	lua_password_check,@function
lua_password_check:                     // @lua_password_check
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	sub	x2, x29, #16
	bl	luaL_checklstring
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	mov	w1, #2
	sub	x2, x29, #32
	bl	luaL_checklstring
	str	x0, [sp, #40]
	ldur	x0, [x29, #-8]
	mov	w1, #3
	add	x2, sp, #32
	bl	luaL_checklstring
	str	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #40]
	ldur	x3, [x29, #-32]
	ldr	x4, [sp, #24]
	ldr	x5, [sp, #32]
	bl	network_mysqld_proto_password_check
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_pushboolean
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	lua_password_check, .Lfunc_end0-lua_password_check
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_password_check
	.addrsig_sym luaL_checklstring
	.addrsig_sym lua_pushboolean
	.addrsig_sym network_mysqld_proto_password_check