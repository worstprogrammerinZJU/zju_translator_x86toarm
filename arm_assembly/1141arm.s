	.text
	.p2align	2                               // -- Begin function set_pixel
	.type	set_pixel,@function
set_pixel:                              // @set_pixel
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	stur	w3, [x29, #-12]
	str	s0, [sp, #16]
	ldur	w8, [x29, #-4]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-8]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-12]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.lt	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_11
.LBB0_7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-4]
	ldr	w10, [x8]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-8]
	ldr	w10, [x8, #4]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x12, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #16]
	ldr	x9, [x12, #16]
	ldur	w10, [x29, #-12]
	ldr	w11, [x12, #4]
	mul	w10, w10, w11
	ldr	w11, [x12]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	ldr	w12, [x12]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldur	w11, [x29, #-4]
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_pixel, .Lfunc_end0-set_pixel
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_pixel
	.addrsig_sym assert