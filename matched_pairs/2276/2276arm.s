	.text
	.p2align	2                               // -- Begin function stbi__psd_info
	.type	stbi__psd_info,@function
stbi__psd_info:                         // @stbi__psd_info
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	add	x8, sp, #16
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	add	x8, sp, #16
	str	x8, [sp, #32]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	add	x8, sp, #16
	str	x8, [sp, #24]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	stbi__get32be
	mov	w8, #20563
	movk	w8, #14402, lsl #16
	subs	w8, w0, w8
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_19
.LBB0_8:
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	subs	w8, w0, #1
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_19
.LBB0_10:
	ldur	x0, [x29, #-16]
	mov	w1, #6
	bl	stbi__skip
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.le	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_19
.LBB0_13:
	ldur	x0, [x29, #-16]
	bl	stbi__get32be
	ldr	x8, [sp, #32]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__get32be
	ldur	x8, [x29, #-24]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #8
	b.eq	.LBB0_16
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.eq	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_19
.LBB0_16:
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	subs	w8, w0, #3
	b.eq	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_19
.LBB0_18:
	ldr	x9, [sp, #24]
	mov	w8, #4
	str	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__psd_info, .Lfunc_end0-stbi__psd_info
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_info
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__skip