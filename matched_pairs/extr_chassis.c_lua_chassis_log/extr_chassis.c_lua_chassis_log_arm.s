	.text
	.p2align	2                               // -- Begin function lua_chassis_log
	.type	lua_chassis_log,@function
lua_chassis_log:                        // @lua_chassis_log
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #36]                   // 4-byte Folded Spill
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	adrp	x3, lua_chassis_log.log_names
	add	x3, x3, :lo12:lua_chassis_log.log_names
	bl	luaL_checkoption
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	mov	w1, #2
	adrp	x2, .L.str.6
	add	x2, x2, :lo12:.L.str.6
	bl	luaL_optstring
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	stur	x0, [x29, #-24]
                                        // kill: def $x9 killed $xzr
	stur	xzr, [x29, #-32]
	adrp	x9, .L.str.7
	add	x9, x9, :lo12:.L.str.7
	stur	x9, [x29, #-40]
	mov	w9, #-1
	stur	w9, [x29, #-44]
	stur	w9, [x29, #-48]
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-52]
	add	x2, sp, #48
	bl	lua_getstack
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_13
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	add	x2, sp, #48
	bl	lua_getinfo
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_13
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #48]
	stur	w8, [x29, #-44]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #1
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-40]
	ldr	w8, [sp, #48]
	stur	w8, [x29, #-48]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	add	w9, w8, #1
	stur	w9, [x29, #-52]
	mov	w8, #0
	subs	w9, w9, #11
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b.ge	.LBB0_12
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	mov	w9, #0
	str	w9, [sp, #32]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #47
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	subs	w8, w8, #64
	cset	w8, ne
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	tbnz	w8, #0, .LBB0_1
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_24
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	subs	w8, w8, #64
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	adrp	x8, LUA_REGISTRYINDEX
	ldr	w1, [x8, :lo12:LUA_REGISTRYINDEX]
	adrp	x8, CHASSIS_LUA_REGISTRY_KEY
	ldr	w2, [x8, :lo12:CHASSIS_LUA_REGISTRY_KEY]
	bl	lua_getfield
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	lua_topointer
	str	x0, [sp, #40]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	lua_pop
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_23
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	cbz	x8, .LBB0_23
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-32]
	ldr	x8, [sp, #40]
	ldr	x1, [x8]
	bl	g_str_has_prefix
	cbz	x0, .LBB0_22
	b	.LBB0_19
.LBB0_19:
	ldr	x8, [sp, #40]
	ldr	x0, [x8]
	bl	strlen
	ldur	x8, [x29, #-32]
	add	x8, x8, w0, sxtw
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	adrp	x9, G_DIR_SEPARATOR
	ldrb	w9, [x9, :lo12:G_DIR_SEPARATOR]
	subs	w8, w8, w9
	b.ne	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	adrp	x8, G_LOG_DOMAIN
	ldr	w8, [x8, :lo12:G_LOG_DOMAIN]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldursw	x9, [x29, #-12]
	adrp	x8, lua_chassis_log.log_levels
	add	x8, x8, :lo12:lua_chassis_log.log_levels
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_27
.LBB0_26:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_27
.LBB0_27:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_30
.LBB0_29:
	ldur	w8, [x29, #-48]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_30
.LBB0_30:
	ldr	x3, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	ldr	w4, [sp, #4]                    // 4-byte Folded Reload
	ldur	x5, [x29, #-24]
	adrp	x2, .L.str.9
	add	x2, x2, :lo12:.L.str.9
	bl	g_log
	mov	w0, wzr
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	lua_chassis_log, .Lfunc_end0-lua_chassis_log
                                        // -- End function
	.type	lua_chassis_log.log_names,@object // @lua_chassis_log.log_names
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
lua_chassis_log.log_names:
	.xword	.L.str
	.xword	.L.str.1
	.xword	.L.str.2
	.xword	.L.str.3
	.xword	.L.str.4
	.xword	.L.str.5
	.xword	0
	.size	lua_chassis_log.log_names, 56
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"critical"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"warning"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"message"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"info"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"debug"
	.size	.L.str.5, 6
	.type	lua_chassis_log.log_levels,@object // @lua_chassis_log.log_levels
	.section	.rodata,"a",@progbits
	.p2align	2
lua_chassis_log.log_levels:
	.word	131                             // 0x83
	.word	133                             // 0x85
	.word	128                             // 0x80
	.word	129                             // 0x81
	.word	130                             // 0x82
	.word	132                             // 0x84
	.size	lua_chassis_log.log_levels, 24
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"nil"
	.size	.L.str.6, 4
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"unknown"
	.size	.L.str.7, 8
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"Sl"
	.size	.L.str.8, 3
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
	.type	G_DIR_SEPARATOR,@object         // @G_DIR_SEPARATOR
	.section	.rodata,"a",@progbits
	.globl	G_DIR_SEPARATOR
G_DIR_SEPARATOR:
	.byte	0                               // 0x0
	.size	G_DIR_SEPARATOR, 1
	.type	G_LOG_DOMAIN,@object            // @G_LOG_DOMAIN
	.bss
	.globl	G_LOG_DOMAIN
	.p2align	2
G_LOG_DOMAIN:
	.word	0                               // 0x0
	.size	G_LOG_DOMAIN, 4
	.type	.L.str.9,@object                // @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"(%s:%d) %s"
	.size	.L.str.9, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_chassis_log
	.addrsig_sym luaL_checkoption
	.addrsig_sym luaL_optstring
	.addrsig_sym lua_getstack
	.addrsig_sym lua_getinfo
	.addrsig_sym lua_getfield
	.addrsig_sym lua_topointer
	.addrsig_sym lua_pop
	.addrsig_sym g_str_has_prefix
	.addrsig_sym strlen
	.addrsig_sym g_log
	.addrsig_sym lua_chassis_log.log_names
	.addrsig_sym lua_chassis_log.log_levels
	.addrsig_sym LUA_REGISTRYINDEX
	.addrsig_sym CHASSIS_LUA_REGISTRY_KEY
	.addrsig_sym G_DIR_SEPARATOR
	.addrsig_sym G_LOG_DOMAIN