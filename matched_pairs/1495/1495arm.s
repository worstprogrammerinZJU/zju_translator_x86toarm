	.text
	.p2align	2                               // -- Begin function file_info
	.type	file_info,@function
file_info:                              // @file_info
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	luaL_checkstring
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	sub	x1, x29, #24
	bl	stat
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #32]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushfstring
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_2:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	lua_isstring
	cbz	x0, .LBB0_16
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	lua_tostring
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	str	wzr, [sp, #28]
	b	.LBB0_15
.LBB0_5:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #12
	str	w8, [sp, #28]
	b	.LBB0_14
.LBB0_7:
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, members
	ldr	x8, [x8, :lo12:members]
	ldrsw	x9, [sp, #28]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	cbz	x8, .LBB0_13
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	adrp	x8, members
	ldr	x8, [x8, :lo12:members]
	ldrsw	x9, [sp, #28]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	ldrb	w8, [x8]
	ldr	x9, [sp, #16]
	ldrb	w9, [x9]
	subs	w8, w8, w9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_13
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_8
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	adrp	x8, members
	ldr	x8, [x8, :lo12:members]
	ldrsw	x9, [sp, #28]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	ldur	x0, [x29, #-16]
	sub	x1, x29, #24
	blr	x8
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_16:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	lua_istable
	cbnz	w0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	lua_newtable
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	stur	wzr, [x29, #-20]
	b	.LBB0_20
.LBB0_20:                               // =>This Inner Loop Header: Depth=1
	adrp	x8, members
	ldr	x8, [x8, :lo12:members]
	ldursw	x9, [x29, #-20]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	cbz	x8, .LBB0_23
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x8, members
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:members]
	ldursw	x9, [x29, #-20]
	lsl	x9, x9, #4
	ldr	x1, [x8, x9]
	bl	lua_pushstring
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:members]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	ldur	x0, [x29, #-16]
	sub	x1, x29, #24
	blr	x8
	ldur	x0, [x29, #-16]
	mov	w1, #-3
	bl	lua_rawset
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_20
.LBB0_23:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_24:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	file_info, .Lfunc_end0-file_info
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot obtain information from file `%s'"
	.size	.L.str, 41
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mode"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"blksize"
	.size	.L.str.2, 8
	.type	members,@object                 // @members
	.bss
	.globl	members
	.p2align	3
members:
	.xword	0
	.size	members, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_info
	.addrsig_sym luaL_checkstring
	.addrsig_sym stat
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym lua_isstring
	.addrsig_sym lua_tostring
	.addrsig_sym strcmp
	.addrsig_sym lua_istable
	.addrsig_sym lua_newtable
	.addrsig_sym lua_pushstring
	.addrsig_sym lua_rawset
	.addrsig_sym members