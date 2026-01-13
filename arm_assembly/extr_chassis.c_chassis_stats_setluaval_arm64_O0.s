	.text
	.p2align	2                               // -- Begin function chassis_stats_setluaval
	.type	chassis_stats_setluaval,@function
chassis_stats_setluaval:                // @chassis_stats_setluaval
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	GPOINTER_TO_UINT
	str	w0, [sp, #12]
	ldr	x8, [sp, #24]
	str	x8, [sp]
	ldr	x0, [sp]
	mov	w1, #-1
	bl	lua_istable
	bl	g_assert
	ldr	x0, [sp]
	mov	w1, #2
	bl	lua_checkstack
	ldr	x0, [sp]
	ldr	x1, [sp, #16]
	bl	lua_pushstring
	ldr	x0, [sp]
	ldr	w1, [sp, #12]
	bl	lua_pushinteger
	ldr	x0, [sp]
	mov	w1, #-3
	bl	lua_settable
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	chassis_stats_setluaval, .Lfunc_end0-chassis_stats_setluaval
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym chassis_stats_setluaval
	.addrsig_sym GPOINTER_TO_UINT
	.addrsig_sym g_assert
	.addrsig_sym lua_istable
	.addrsig_sym lua_checkstack
	.addrsig_sym lua_pushstring
	.addrsig_sym lua_pushinteger
	.addrsig_sym lua_settable