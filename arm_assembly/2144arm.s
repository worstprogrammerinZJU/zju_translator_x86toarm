	.text
	.p2align	2                               // -- Begin function get_out_samples
	.type	get_out_samples,@function
get_out_samples:                        // @get_out_samples
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	d0, [x8, #32]
	scvtf	d0, d0
	ldur	x8, [x29, #-8]
	ldr	d1, [x8]
	fdiv	d0, d0, d1
	ldur	s2, [x29, #-12]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmul	d0, d0, d1
	str	d0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	mov	w0, w8
	bl	soxr_delay
	str	d0, [sp]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	d0, [x8, #8]
	scvtf	d1, d0
	ldr	d0, [sp]
	fadd	d0, d0, d1
	str	d0, [sp]
	b	.LBB0_2
.LBB0_2:
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fadd	d0, d0, d1
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	fmov	d1, #0.50000000
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_out_samples, .Lfunc_end0-get_out_samples
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_out_samples
	.addrsig_sym soxr_delay