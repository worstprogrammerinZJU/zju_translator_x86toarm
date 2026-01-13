	.text
	.p2align	2                               // -- Begin function lua_chassis_stats
	.type	lua_chassis_stats,@function
lua_chassis_stats:                      // @lua_chassis_stats
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-24]
	stur	xzr, [x29, #-32]
	str	xzr, [sp, #40]
	str	xzr, [sp, #32]
	adrp	x8, FALSE
	ldr	w8, [x8, :lo12:FALSE]
	str	w8, [sp, #28]
	ldur	x0, [x29, #-16]
	bl	lua_gettop
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-24]
	b	.LBB0_6
.LBB0_2:
	ldr	w8, [sp, #24]
	subs	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	luaL_checkstring
	stur	x0, [x29, #-24]
	b	.LBB0_5
.LBB0_4:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	luaL_argerror
	stur	w0, [x29, #-4]
	b	.LBB0_39
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	lua_newtable
	ldur	x0, [x29, #-16]
	adrp	x8, LUA_REGISTRYINDEX
	ldr	w1, [x8, :lo12:LUA_REGISTRYINDEX]
	adrp	x8, CHASSIS_LUA_REGISTRY_KEY
	ldr	w2, [x8, :lo12:CHASSIS_LUA_REGISTRY_KEY]
	bl	lua_getfield
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	bl	lua_topointer
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	lua_pop
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_12
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-32]
	ldr	w0, [x8]
	bl	chassis_stats_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, FALSE
	ldr	w8, [x8, :lo12:FALSE]
	str	w8, [sp, #28]
	b	.LBB0_11
.LBB0_10:
	adrp	x8, TRUE
	ldr	w8, [x8, :lo12:TRUE]
	str	w8, [sp, #28]
	ldur	x0, [x29, #-16]
	bl	lua_newtable
	ldr	x0, [sp, #16]
	adrp	x8, chassis_stats_setluaval
	ldr	w1, [x8, :lo12:chassis_stats_setluaval]
	ldur	x2, [x29, #-16]
	bl	g_hash_table_foreach
	ldur	x0, [x29, #-16]
	mov	w1, #-2
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	lua_setfield
	ldr	x0, [sp, #16]
	bl	g_hash_table_destroy
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_36
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_36
	b	.LBB0_14
.LBB0_14:
	str	xzr, [sp, #32]
	b	.LBB0_15
.LBB0_15:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_35
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #32]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_33
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_33
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_15 Depth=1
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_22
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #40]
	ldr	x0, [x9, #8]
	blr	x8
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_15 Depth=1
	adrp	x8, TRUE
	ldr	w8, [x8, :lo12:TRUE]
	str	w8, [sp, #28]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x0, [x29, #-16]
	bl	lua_newtable
	ldr	x0, [sp, #8]
	adrp	x8, chassis_stats_setluaval
	ldr	w1, [x8, :lo12:chassis_stats_setluaval]
	ldur	x2, [x29, #-16]
	bl	g_hash_table_foreach
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #40]
	ldr	x2, [x8]
	mov	w1, #-2
	bl	lua_setfield
	ldr	x0, [sp, #8]
	bl	g_hash_table_destroy
	b	.LBB0_32
.LBB0_22:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	g_ascii_strcasecmp
	cbnz	x0, .LBB0_26
	b	.LBB0_23
.LBB0_23:
	ldur	x8, [x29, #-32]
	ldr	w0, [x8]
	bl	chassis_stats_get
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_25
	b	.LBB0_24
.LBB0_24:
	adrp	x8, FALSE
	ldr	w8, [x8, :lo12:FALSE]
	str	w8, [sp, #28]
	b	.LBB0_35
.LBB0_25:
	adrp	x8, TRUE
	ldr	w8, [x8, :lo12:TRUE]
	str	w8, [sp, #28]
	ldr	x0, [sp, #8]
	adrp	x8, chassis_stats_setluaval
	ldr	w1, [x8, :lo12:chassis_stats_setluaval]
	ldur	x2, [x29, #-16]
	bl	g_hash_table_foreach
	ldr	x0, [sp, #8]
	bl	g_hash_table_destroy
	b	.LBB0_35
.LBB0_26:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #40]
	ldr	x1, [x8]
	bl	g_ascii_strcasecmp
	cbnz	x0, .LBB0_30
	b	.LBB0_27
.LBB0_27:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #40]
	ldr	x0, [x9, #8]
	blr	x8
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, FALSE
	ldr	w8, [x8, :lo12:FALSE]
	str	w8, [sp, #28]
	b	.LBB0_35
.LBB0_29:
	adrp	x8, TRUE
	ldr	w8, [x8, :lo12:TRUE]
	str	w8, [sp, #28]
	ldr	x0, [sp, #8]
	adrp	x8, chassis_stats_setluaval
	ldr	w1, [x8, :lo12:chassis_stats_setluaval]
	ldur	x2, [x29, #-16]
	bl	g_hash_table_foreach
	ldr	x0, [sp, #8]
	bl	g_hash_table_destroy
	b	.LBB0_35
.LBB0_30:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_35:
	b	.LBB0_36
.LBB0_36:
	ldr	w8, [sp, #28]
	cbnz	w8, .LBB0_38
	b	.LBB0_37
.LBB0_37:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	lua_pop
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_39
.LBB0_38:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_39
.LBB0_39:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	lua_chassis_stats, .Lfunc_end0-lua_chassis_stats
                                        // -- End function
	.type	FALSE,@object                   // @FALSE
	.bss
	.globl	FALSE
	.p2align	2
FALSE:
	.word	0                               // 0x0
	.size	FALSE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"currently only zero or one arguments are allowed"
	.size	.L.str, 49
	.type	LUA_REGISTRYINDEX,@object       // @LUA_REGISTRYINDEX
	.bss
	.globl	LUA_REGISTRYINDEX
	.p2align	2
LUA_REGISTRYINDEX:
	.word	0                               // 0x0
	.size	LUA_REGISTRYINDEX, 4
	.type	CHASSIS_LUA_REGISTRY_KEY,@object // @CHASSIS_LUA_REGISTRY_KEY
	.globl	CHASSIS_LUA_REGISTRY_KEY
	.p2align	2
CHASSIS_LUA_REGISTRY_KEY:
	.word	0                               // 0x0
	.size	CHASSIS_LUA_REGISTRY_KEY, 4
	.type	TRUE,@object                    // @TRUE
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.type	chassis_stats_setluaval,@object // @chassis_stats_setluaval
	.globl	chassis_stats_setluaval
	.p2align	2
chassis_stats_setluaval:
	.word	0                               // 0x0
	.size	chassis_stats_setluaval, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"chassis"
	.size	.L.str.1, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_chassis_stats
	.addrsig_sym lua_gettop
	.addrsig_sym luaL_checkstring
	.addrsig_sym luaL_argerror
	.addrsig_sym lua_newtable
	.addrsig_sym lua_getfield
	.addrsig_sym lua_topointer
	.addrsig_sym lua_pop
	.addrsig_sym chassis_stats_get
	.addrsig_sym g_hash_table_foreach
	.addrsig_sym lua_setfield
	.addrsig_sym g_hash_table_destroy
	.addrsig_sym g_ascii_strcasecmp
	.addrsig_sym lua_pushnil
	.addrsig_sym FALSE
	.addrsig_sym LUA_REGISTRYINDEX
	.addrsig_sym CHASSIS_LUA_REGISTRY_KEY
	.addrsig_sym TRUE
	.addrsig_sym chassis_stats_setluaval