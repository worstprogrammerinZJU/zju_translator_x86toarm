	.text
	.p2align	2                               // -- Begin function dir_iter
	.type	dir_iter,@function
dir_iter:                               // @dir_iter
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	w0, #1
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	lua_upvalueindex
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	lua_touserdata
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	str	x0, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	and	w1, w8, #0x1
	adrp	x3, .L.str
	add	x3, x3, :lo12:.L.str
	bl	luaL_argcheck
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #16]
	bl	readdir
	str	x0, [sp, #24]
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	lua_pushstring
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #16]
	bl	closedir
	ldr	x9, [sp, #16]
	mov	w8, #1
	str	w8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	dir_iter, .Lfunc_end0-dir_iter
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"closed directory"
	.size	.L.str, 17
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_iter
	.addrsig_sym lua_touserdata
	.addrsig_sym lua_upvalueindex
	.addrsig_sym luaL_argcheck
	.addrsig_sym readdir
	.addrsig_sym lua_pushstring
	.addrsig_sym closedir