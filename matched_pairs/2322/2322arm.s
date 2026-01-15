	.text
	.p2align	2                               // -- Begin function stbiw__wpcrc
	.type	stbiw__wpcrc,@function
stbiw__wpcrc:                           // @stbiw__wpcrc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #4]
	subs	x8, x8, x9
	subs	x0, x8, #4
	ldr	w8, [sp, #4]
	add	w1, w8, #4
	bl	stbiw__crc32
	str	w0, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	w1, [sp]
	bl	stbiw__wp32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbiw__wpcrc, .Lfunc_end0-stbiw__wpcrc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__wpcrc
	.addrsig_sym stbiw__crc32
	.addrsig_sym stbiw__wp32