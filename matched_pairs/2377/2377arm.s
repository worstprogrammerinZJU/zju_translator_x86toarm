	.text
	.globl	swr_convert_frame               // -- Begin function swr_convert_frame
	.p2align	2
	.type	swr_convert_frame,@function
swr_convert_frame:                      // @swr_convert_frame
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	wzr, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	swr_is_initialized
	cbnz	w0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	swr_config_frame
	str	w0, [sp, #12]
	subs	w8, w0, #0
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	swr_init
	str	w0, [sp, #12]
	subs	w8, w0, #0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_5:
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_9
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	config_changed
	str	w0, [sp, #12]
	cbz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_22
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_18
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	bl	swr_get_delay
	add	w8, w0, #3
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
                                        // kill: def $w9 killed $w9 killed $x9
	mul	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	sdiv	w10, w8, w9
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #24]
	mov	w1, wzr
	bl	av_frame_get_buffer
	str	w0, [sp, #12]
	subs	w8, w0, #0
	b.ge	.LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	bl	swr_close
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_17:
	b	.LBB0_21
.LBB0_18:
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x0, [sp, #24]
	bl	available_samples
	ldr	x8, [sp, #24]
	str	w0, [x8]
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	convert_frame
	stur	w0, [x29, #-4]
	b	.LBB0_23
.LBB0_23:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	swr_convert_frame, .Lfunc_end0-swr_convert_frame
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_is_initialized
	.addrsig_sym swr_config_frame
	.addrsig_sym swr_init
	.addrsig_sym config_changed
	.addrsig_sym swr_get_delay
	.addrsig_sym av_frame_get_buffer
	.addrsig_sym swr_close
	.addrsig_sym available_samples
	.addrsig_sym convert_frame