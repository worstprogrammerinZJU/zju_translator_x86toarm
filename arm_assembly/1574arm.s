	.text
	.p2align	2                               // -- Begin function fix_l
	.type	fix_l,@function
fix_l:                                  // @fix_l
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	mov	w8, #2
	stur	w8, [x29, #-32]
	stur	wzr, [x29, #-36]
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	str	w0, [sp, #40]
	ldur	x0, [x29, #-8]
	bl	lua_newtable
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	lua_pushinteger
	ldur	x0, [x29, #-8]
	bl	lua_pushnil
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_next
	cbz	x0, .LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_tonumber
	subs	w8, w0, #1
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	lua_isstring
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #40]
	add	w1, w8, #2
	bl	lua_replace
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	testpattern
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	pattsize
	add	w8, w0, #1
	str	w8, [sp, #36]
	ldur	w8, [x29, #-32]
	adrp	x9, MAXPATTSIZE
	ldr	w9, [x9, :lo12:MAXPATTSIZE]
	ldr	w10, [sp, #36]
	subs	w9, w9, w10
	subs	w8, w8, w9
	b.lt	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	luaL_error
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x8, LUA_MINSTACK
	ldr	w1, [x8, :lo12:LUA_MINSTACK]
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	luaL_checkstack
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_insert
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	str	w1, [sp, #24]                   // 4-byte Folded Spill
	bl	lua_pushvalue
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	lua_pushvalue
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-32]
	bl	lua_pushinteger
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #40]
	add	w1, w8, #1
	bl	lua_settable
	ldr	w9, [sp, #36]
	ldur	w8, [x29, #-32]
	add	w8, w8, w9
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_1
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, gt
	and	w1, w8, #0x1
	ldur	w2, [x29, #-12]
	adrp	x3, .L.str.3
	add	x3, x3, :lo12:.L.str.3
	bl	luaL_argcheck
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-32]
	bl	newpatt
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	add	x8, x8, #16
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	mov	x8, x0
	add	x8, x8, #16
	stur	x8, [x29, #-24]
	adrp	x8, IJmp
	ldr	x1, [x8, :lo12:IJmp]
	ldur	w8, [x29, #-32]
	mov	w9, #1
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	subs	w2, w8, #1
	bl	setinst
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w8, [x29, #-28]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.gt	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	ldur	w9, [x29, #-28]
	add	w2, w8, w9, lsl #1
	bl	addpatt
	ldur	x8, [x29, #-24]
	add	x8, x8, w0, sxtw #4
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	mov	x8, x0
	add	x8, x8, #16
	stur	x8, [x29, #-24]
	adrp	x8, IRet
	ldr	x1, [x8, :lo12:IRet]
	mov	w2, wzr
	bl	setinst
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_11
.LBB0_14:
	ldursw	x10, [x29, #-32]
	ldur	x8, [x29, #-24]
	mov	x9, xzr
	subs	x9, x9, x10
	add	x8, x8, x9, lsl #4
	stur	x8, [x29, #-24]
	mov	w8, #2
	stur	w8, [x29, #-32]
	mov	w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_15
.LBB0_15:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.gt	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	ldur	w9, [x29, #-28]
	add	w1, w8, w9, lsl #1
	bl	pattsize
	add	w8, w0, #1
	str	w8, [sp, #32]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-32]
	ldur	w8, [x29, #-32]
	ldr	w9, [sp, #32]
	add	w3, w8, w9
	ldr	w8, [sp, #40]
	add	w4, w8, #1
	ldr	w8, [sp, #40]
	add	w8, w8, #2
	ldur	w9, [x29, #-28]
	add	w5, w8, w9, lsl #1
	bl	checkrule
	ldr	w9, [sp, #32]
	ldur	w8, [x29, #-32]
	add	w8, w8, w9
	stur	w8, [x29, #-32]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_15
.LBB0_18:
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #40]
	add	w1, w8, #2
	bl	lua_pushvalue
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #40]
	mov	w9, #1
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	add	w1, w8, #1
	bl	lua_gettable
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	lua_tonumber
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-8]
	bl	lua_pop
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	luaL_error
	b	.LBB0_20
.LBB0_20:
	ldur	x0, [x29, #-24]
	adrp	x8, ICall
	ldr	x1, [x8, :lo12:ICall]
	ldur	w2, [x29, #-28]
	bl	setinst
	stur	wzr, [x29, #-28]
	b	.LBB0_21
.LBB0_21:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_29
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IOpenCall
	ldr	x9, [x9, :lo12:IOpenCall]
	subs	x8, x8, x9
	b.ne	.LBB0_27
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #40]
	add	w1, w8, #1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	add	x8, x8, x9, lsl #4
	ldr	w2, [x8, #8]
	bl	getposition
	str	w0, [sp, #28]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldur	w8, [x29, #-28]
	add	w1, w8, #1
	bl	target
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	lsl	x9, x0, #4
	ldr	x8, [x8, x9]
	adrp	x9, IRet
	ldr	x9, [x9, :lo12:IRet]
	subs	x8, x8, x9
	b.ne	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_21 Depth=1
	adrp	x8, IJmp
	ldr	x8, [x8, :lo12:IJmp]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_26
.LBB0_25:                               //   in Loop: Header=BB0_21 Depth=1
	adrp	x8, ICall
	ldr	x8, [x8, :lo12:ICall]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-28]
	lsl	x10, x10, #4
	str	x8, [x9, x10]
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-28]
	add	x9, x9, x10, lsl #4
	str	w8, [x9, #8]
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_21 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_21 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	add	x0, x8, x9, lsl #4
	bl	sizei
	ldursw	x8, [x29, #-28]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-28]
	b	.LBB0_21
.LBB0_29:
	ldur	x0, [x29, #-24]
	bl	optimizejumps
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_replace
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #40]
	bl	lua_settop
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	fix_l, .Lfunc_end0-fix_l
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid field in grammar"
	.size	.L.str, 25
	.type	MAXPATTSIZE,@object             // @MAXPATTSIZE
	.bss
	.globl	MAXPATTSIZE
	.p2align	2
MAXPATTSIZE:
	.word	0                               // 0x0
	.size	MAXPATTSIZE, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"grammar too large"
	.size	.L.str.1, 18
	.type	LUA_MINSTACK,@object            // @LUA_MINSTACK
	.bss
	.globl	LUA_MINSTACK
	.p2align	2
LUA_MINSTACK:
	.word	0                               // 0x0
	.size	LUA_MINSTACK, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"grammar has too many rules"
	.size	.L.str.2, 27
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"empty grammar"
	.size	.L.str.3, 14
	.type	IJmp,@object                    // @IJmp
	.bss
	.globl	IJmp
	.p2align	3
IJmp:
	.xword	0                               // 0x0
	.size	IJmp, 8
	.type	IRet,@object                    // @IRet
	.globl	IRet
	.p2align	3
IRet:
	.xword	0                               // 0x0
	.size	IRet, 8
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"initial rule not defined in given grammar"
	.size	.L.str.4, 42
	.type	ICall,@object                   // @ICall
	.bss
	.globl	ICall
	.p2align	3
ICall:
	.xword	0                               // 0x0
	.size	ICall, 8
	.type	IOpenCall,@object               // @IOpenCall
	.globl	IOpenCall
	.p2align	3
IOpenCall:
	.xword	0                               // 0x0
	.size	IOpenCall, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fix_l
	.addrsig_sym lua_gettop
	.addrsig_sym lua_newtable
	.addrsig_sym lua_pushinteger
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_next
	.addrsig_sym lua_tonumber
	.addrsig_sym lua_isstring
	.addrsig_sym lua_replace
	.addrsig_sym testpattern
	.addrsig_sym luaL_error
	.addrsig_sym pattsize
	.addrsig_sym luaL_checkstack
	.addrsig_sym lua_insert
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_settable
	.addrsig_sym luaL_argcheck
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym addpatt
	.addrsig_sym checkrule
	.addrsig_sym lua_gettable
	.addrsig_sym lua_pop
	.addrsig_sym getposition
	.addrsig_sym target
	.addrsig_sym sizei
	.addrsig_sym optimizejumps
	.addrsig_sym lua_settop
	.addrsig_sym MAXPATTSIZE
	.addrsig_sym LUA_MINSTACK
	.addrsig_sym IJmp
	.addrsig_sym IRet
	.addrsig_sym ICall
	.addrsig_sym IOpenCall