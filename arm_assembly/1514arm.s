	.text
	.p2align	2                               // -- Begin function remove_dir
	.type	remove_dir,@function
remove_dir:                             // @remove_dir
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	luaL_checkstring
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	rmdir
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	lua_pushnil
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	lua_pushfstring
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	lua_pushboolean
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	remove_dir, .Lfunc_end0-remove_dir
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
	.addrsig_sym remove_dir
	.addrsig_sym luaL_checkstring
	.addrsig_sym rmdir
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym lua_pushboolean
	.addrsig_sym errno