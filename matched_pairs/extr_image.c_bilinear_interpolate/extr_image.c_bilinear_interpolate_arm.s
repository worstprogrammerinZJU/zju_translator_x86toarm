	.text
	.p2align	2                               // -- Begin function bilinear_interpolate
	.type	bilinear_interpolate,@function
bilinear_interpolate:                   // @bilinear_interpolate
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	w0, [x29, #-4]
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-12]
	stur	w1, [x29, #-16]
	ldur	s0, [x29, #-8]
	bl	floorf
	mov	w8, w0
	stur	w8, [x29, #-20]
	ldur	s0, [x29, #-12]
	bl	floorf
	mov	w8, w0
	stur	w8, [x29, #-24]
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-20]
	scvtf	s1, s1
	fsub	s0, s0, s1
	stur	s0, [x29, #-28]
	ldur	s0, [x29, #-12]
	ldur	s1, [x29, #-24]
	scvtf	s1, s1
	fsub	s0, s0, s1
	stur	s0, [x29, #-32]
	ldur	s0, [x29, #-32]
	fmov	s1, #1.00000000
	str	s1, [sp, #24]                   // 4-byte Folded Spill
	fsub	s0, s1, s0
	ldur	s2, [x29, #-28]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	str	s0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-20]
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-16]
	bl	get_pixel_extend
	ldr	s1, [sp, #24]                   // 4-byte Folded Reload
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	ldur	s0, [x29, #-32]
	ldur	s2, [x29, #-28]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-20]
	ldur	w8, [x29, #-24]
	add	w2, w8, #1
	ldur	w3, [x29, #-16]
	bl	get_pixel_extend
	ldr	s3, [sp, #12]                   // 4-byte Folded Reload
	ldr	s2, [sp, #16]                   // 4-byte Folded Reload
	ldr	s1, [sp, #20]                   // 4-byte Folded Reload
	fmov	s4, s0
	ldr	s0, [sp, #24]                   // 4-byte Folded Reload
	fmul	s3, s3, s4
	fmadd	s1, s1, s2, s3
	str	s1, [sp, #28]                   // 4-byte Folded Spill
	ldur	s1, [x29, #-32]
	fsub	s0, s0, s1
	ldur	s1, [x29, #-28]
	fmul	s0, s0, s1
	str	s0, [sp, #32]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	ldur	w8, [x29, #-20]
	add	w1, w8, #1
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-16]
	bl	get_pixel_extend
	ldr	s2, [sp, #28]                   // 4-byte Folded Reload
	fmov	s1, s0
	ldr	s0, [sp, #32]                   // 4-byte Folded Reload
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	ldur	s0, [x29, #-32]
	ldur	s1, [x29, #-28]
	fmul	s0, s0, s1
	str	s0, [sp, #40]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	ldur	w8, [x29, #-20]
	add	w1, w8, #1
	ldur	w8, [x29, #-24]
	add	w2, w8, #1
	ldur	w3, [x29, #-16]
	bl	get_pixel_extend
	ldr	s2, [sp, #36]                   // 4-byte Folded Reload
	fmov	s1, s0
	ldr	s0, [sp, #40]                   // 4-byte Folded Reload
	fmadd	s0, s0, s1, s2
	stur	s0, [x29, #-36]
	ldur	s0, [x29, #-36]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	bilinear_interpolate, .Lfunc_end0-bilinear_interpolate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bilinear_interpolate
	.addrsig_sym floorf
	.addrsig_sym get_pixel_extend