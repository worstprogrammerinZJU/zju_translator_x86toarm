	.text
	.p2align	2                               // -- Begin function flush
	.type	flush,@function
flush:                                  // @flush
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w0, w8
	bl	soxr_delay
	ldur	x8, [x29, #-8]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w0, w8
	mov	x6, xzr
	mov	x1, x6
	mov	w5, wzr
	str	w5, [sp, #12]                   // 4-byte Folded Spill
	mov	w2, w5
	mov	x3, x6
	mov	x4, x6
	bl	soxr_process
	ldr	w5, [sp, #12]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w0, w8
	sub	x4, x29, #12
	mov	x1, x4
	mov	w2, w5
	add	x3, sp, #24
	add	x6, sp, #16
	bl	soxr_process
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w0, w8
	bl	soxr_delay
	mov	x10, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #8]
	subs	x8, x8, x10
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	flush, .Lfunc_end0-flush
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flush
	.addrsig_sym soxr_delay
	.addrsig_sym soxr_process