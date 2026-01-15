	.text
	.p2align	2                               // -- Begin function get_delay
	.type	get_delay,@function
get_delay:                              // @get_delay
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	mov	w0, w8
	bl	soxr_delay
	str	d0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	d0, [x8, #8]
	scvtf	d1, d0
	ldr	d0, [sp, #8]
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	.LBB0_2
.LBB0_2:
	ldr	d0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	d1, [x8]
	fdiv	d0, d0, d1
	str	d0, [sp]
	ldr	d0, [sp]
	ldr	d1, [sp, #16]
	fmov	d2, #0.50000000
	fmadd	d0, d0, d1, d2
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_delay, .Lfunc_end0-get_delay
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_delay
	.addrsig_sym soxr_delay