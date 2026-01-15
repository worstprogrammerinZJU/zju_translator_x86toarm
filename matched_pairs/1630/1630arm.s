	.text
	.p2align	2                               // -- Begin function substcap
	.type	substcap,@function
substcap:                               // @substcap
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x8, [x8, #-8]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	sub	x1, x29, #12
	bl	luaL_buffinit
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	isclosecap
	cbnz	w0, .LBB0_13
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	w2, w8
	sub	x0, x29, #12
	bl	luaL_addlstring
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	captype
	adrp	x8, Cstring
	ldr	x8, [x8, :lo12:Cstring]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-8]
	sub	x0, x29, #12
	bl	stringcap
	b	.LBB0_12
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	pushcapture
	stur	w0, [x29, #-28]
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	ldur	w8, [x29, #-28]
	subs	w1, w8, #1
	bl	lua_pop
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	mov	w1, #-1
	bl	lua_isstring
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	mov	w1, #-1
	bl	luaL_typename
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	sub	x0, x29, #12
	bl	luaL_addvalue
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x0, x8, #8
	bl	closeaddr
	stur	x0, [x29, #-24]
	b	.LBB0_1
.LBB0_13:
	ldur	x1, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	w2, w8
	sub	x0, x29, #12
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	luaL_addlstring
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	luaL_pushresult
	ldur	x9, [x29, #-8]
	ldr	x8, [x9]
	add	x8, x8, #8
	str	x8, [x9]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	substcap, .Lfunc_end0-substcap
                                        // -- End function
	.type	Cstring,@object                 // @Cstring
	.bss
	.globl	Cstring
	.p2align	3
Cstring:
	.xword	0                               // 0x0
	.size	Cstring, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid replacement value (a %s)"
	.size	.L.str, 33
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym substcap
	.addrsig_sym luaL_buffinit
	.addrsig_sym isclosecap
	.addrsig_sym luaL_addlstring
	.addrsig_sym captype
	.addrsig_sym stringcap
	.addrsig_sym pushcapture
	.addrsig_sym lua_pop
	.addrsig_sym lua_isstring
	.addrsig_sym luaL_error
	.addrsig_sym luaL_typename
	.addrsig_sym luaL_addvalue
	.addrsig_sym closeaddr
	.addrsig_sym luaL_pushresult
	.addrsig_sym Cstring