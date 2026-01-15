	.text
	.p2align	2                               // -- Begin function file_unlock
	.type	file_unlock,@function
file_unlock:                            // @file_unlock
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	check_file
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-16]
	mov	w1, #2
	mov	w2, wzr
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	luaL_optlong
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	str	x0, [sp, #32]
	ldur	x0, [x29, #-16]
	mov	w1, #3
	bl	luaL_optlong
	ldr	x5, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [sp, #24]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	_file_lock
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	lua_pushboolean
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	lua_pushfstring
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	file_unlock, .Lfunc_end0-file_unlock
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unlock"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"u"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_unlock
	.addrsig_sym check_file
	.addrsig_sym luaL_optlong
	.addrsig_sym _file_lock
	.addrsig_sym lua_pushboolean
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym errno