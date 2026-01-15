	.text
	.p2align	2                               // -- Begin function get_pixel
	.type	get_pixel,@function
get_pixel:                              // @get_pixel
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	stur	w3, [x29, #-12]
	ldur	w9, [x29, #-4]
	ldr	w10, [x0]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-8]
	ldr	w10, [x8, #4]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x11, #16]
	ldur	w9, [x29, #-12]
	ldr	w10, [x11, #4]
	mul	w9, w9, w10
	ldr	w10, [x11]
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	ldr	w11, [x11]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldur	w10, [x29, #-4]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_pixel, .Lfunc_end0-get_pixel
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym assert