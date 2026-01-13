	.text
	.p2align	2                               // -- Begin function dir_close
	.type	dir_close,@function
dir_close:                              // @dir_close
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	lua_touserdata
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	bl	closedir
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_3
.LBB0_3:
	mov	w0, wzr
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	dir_close, .Lfunc_end0-dir_close
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_close
	.addrsig_sym lua_touserdata
	.addrsig_sym closedir