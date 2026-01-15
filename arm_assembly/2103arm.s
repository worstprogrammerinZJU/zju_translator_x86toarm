	.text
	.p2align	2                               // -- Begin function set_compensation
	.type	set_compensation,@function
set_compensation:                       // @set_compensation
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	rebuild_filter_bank_with_compensation
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #8]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	ldr	w10, [sp, #8]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	b	.LBB0_8
.LBB0_7:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #16]
	sdiv	w8, w8, w9
	ldr	x9, [sp, #16]
	str	w8, [x9, #12]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	ldr	w10, [x9, #16]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldr	x9, [sp, #16]
	str	w8, [x9, #20]
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_compensation, .Lfunc_end0-set_compensation
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_compensation
	.addrsig_sym rebuild_filter_bank_with_compensation