	.text
	.p2align	2                               // -- Begin function matchl
	.type	matchl,@function
matchl:                                 // @matchl
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #128
	stur	x0, [x29, #-16]
	adrp	x8, IMAXCAPTURES
	ldr	w8, [x8, :lo12:IMAXCAPTURES]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-24]
	lsl	x9, x8, #2
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-104]                // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-32]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	stur	w1, [x29, #-96]                 // 4-byte Folded Spill
	mov	x2, xzr
	bl	getpatt
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-16]
	adrp	x8, SUBJIDX
	ldr	w1, [x8, :lo12:SUBJIDX]
	sub	x2, x29, #48
	bl	luaL_checklstring
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-16]
	bl	lua_gettop
	ldur	w2, [x29, #-96]                 // 4-byte Folded Reload
	stur	w0, [x29, #-68]
	ldur	x0, [x29, #-16]
	mov	w1, #3
	bl	luaL_optinteger
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	subs	x8, x8, #0
	b.le	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	b.hi	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-80]
	subs	x8, x8, #1
	stur	x8, [x29, #-112]                // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_3:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-112]                // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-112]                // 8-byte Folded Reload
	stur	x8, [x29, #-120]                // 8-byte Folded Spill
	b	.LBB0_9
.LBB0_5:
	ldur	x9, [x29, #-80]
	mov	x8, xzr
	subs	x8, x8, x9
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	b.hi	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-48]
	ldur	x10, [x29, #-80]
	mov	x9, xzr
	subs	x9, x9, x10
	subs	x8, x8, x9
	stur	x8, [x29, #-128]                // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	mov	x8, xzr
	stur	x8, [x29, #-128]                // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-128]                // 8-byte Folded Reload
	stur	x8, [x29, #-120]                // 8-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-120]                // 8-byte Folded Reload
	stur	x8, [x29, #-88]
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldur	x1, [x29, #-104]                // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	lua_pushlightuserdata
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	lua_getfenv
	ldur	x5, [x29, #-104]                // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-64]
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-88]
	add	x2, x8, x9
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-48]
	add	x3, x8, x9
	ldur	x4, [x29, #-56]
	ldur	w6, [x29, #-68]
	bl	match
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	mov	w8, #1
	stur	w8, [x29, #-4]
	stur	w8, [x29, #-92]
	b	.LBB0_12
.LBB0_11:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-64]
	ldur	x2, [x29, #-40]
	ldur	w3, [x29, #-68]
	bl	getcaptures
	stur	w0, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-92]
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-24]
	mov	sp, x8
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	matchl, .Lfunc_end0-matchl
                                        // -- End function
	.type	IMAXCAPTURES,@object            // @IMAXCAPTURES
	.bss
	.globl	IMAXCAPTURES
	.p2align	2
IMAXCAPTURES:
	.word	0                               // 0x0
	.size	IMAXCAPTURES, 4
	.type	SUBJIDX,@object                 // @SUBJIDX
	.globl	SUBJIDX
	.p2align	2
SUBJIDX:
	.word	0                               // 0x0
	.size	SUBJIDX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym matchl
	.addrsig_sym getpatt
	.addrsig_sym luaL_checklstring
	.addrsig_sym lua_gettop
	.addrsig_sym luaL_optinteger
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushlightuserdata
	.addrsig_sym lua_getfenv
	.addrsig_sym match
	.addrsig_sym getcaptures
	.addrsig_sym IMAXCAPTURES
	.addrsig_sym SUBJIDX