	.text
	.p2align	2                               // -- Begin function lua_chassis_log_message
	.type	lua_chassis_log_message,@function
lua_chassis_log_message:                // @lua_chassis_log_message
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushliteral
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	lua_insert
	ldur	x0, [x29, #-8]
	bl	lua_chassis_log
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	str	w0, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	lua_remove
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	g_assert
	ldr	w0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	lua_chassis_log_message, .Lfunc_end0-lua_chassis_log_message
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"message"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_chassis_log_message
	.addrsig_sym lua_gettop
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_insert
	.addrsig_sym lua_chassis_log
	.addrsig_sym lua_remove
	.addrsig_sym g_assert