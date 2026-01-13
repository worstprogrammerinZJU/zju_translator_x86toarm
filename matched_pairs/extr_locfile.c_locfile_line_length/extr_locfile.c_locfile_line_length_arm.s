	.text
	.p2align	2                               // -- Begin function locfile_line_length
	.type	locfile_line_length,@function
locfile_line_length:                    // @locfile_line_length
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w9, [sp, #4]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #4]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	subs	w0, w8, #1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	locfile_line_length, .Lfunc_end0-locfile_line_length
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym locfile_line_length
	.addrsig_sym assert