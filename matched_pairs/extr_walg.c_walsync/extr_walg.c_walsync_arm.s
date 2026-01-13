	.text
	.p2align	2                               // -- Begin function walsync
	.type	walsync,@function
walsync:                                // @walsync
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	bl	nanoseconds
	str	x0, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x10, [sp, #8]
	ldr	x10, [x10, #8]
	add	x9, x9, x10
	subs	x8, x8, x9
	b.lt	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	w0, [x8]
	bl	fsync
	adds	w8, w0, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	walsync, .Lfunc_end0-walsync
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fsync"
	.size	.L.str, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walsync
	.addrsig_sym nanoseconds
	.addrsig_sym fsync
	.addrsig_sym twarn