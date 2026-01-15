	.text
	.p2align	2                               // -- Begin function lua_password_hash
	.type	lua_password_hash,@function
lua_password_hash:                      // @lua_password_hash
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	sub	x2, x29, #16
	bl	luaL_checklstring
	str	x0, [sp, #24]
	mov	x0, xzr
	bl	g_string_new
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-16]
	bl	network_mysqld_proto_password_hash
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	S
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	lua_pushlstring
	ldr	x0, [sp, #16]
	adrp	x8, TRUE
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	lua_password_hash, .Lfunc_end0-lua_password_hash
                                        // -- End function
	.type	TRUE,@object                    // @TRUE
	.bss
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_password_hash
	.addrsig_sym luaL_checklstring
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_password_hash
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym TRUE