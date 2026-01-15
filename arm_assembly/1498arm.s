	.text
	.p2align	2                               // -- Begin function file_utime
	.type	file_utime,@function
file_utime:                             // @file_utime
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	luaL_checkstring
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	lua_gettop
	subs	w8, w0, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	mov	x2, xzr
	bl	luaL_optnumber
	add	x8, sp, #40
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #40]
	mov	w1, #3
	bl	luaL_optnumber
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [sp, #48]
	str	x8, [sp, #32]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	utime
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushfstring
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_5:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	lua_pushboolean
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	file_utime, .Lfunc_end0-file_utime
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_utime
	.addrsig_sym luaL_checkstring
	.addrsig_sym lua_gettop
	.addrsig_sym luaL_optnumber
	.addrsig_sym utime
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym lua_pushboolean
	.addrsig_sym errno