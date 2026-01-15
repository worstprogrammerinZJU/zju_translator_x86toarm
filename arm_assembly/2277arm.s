	.text
	.p2align	2                               // -- Begin function stbi__psd_is16
	.type	stbi__psd_is16,@function
stbi__psd_is16:                         // @stbi__psd_is16
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	stbi__get32be
	mov	w8, #20563
	movk	w8, #14402, lsl #16
	subs	w8, w0, w8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	stbi__get16be
	subs	w8, w0, #1
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_4:
	ldr	x0, [sp, #16]
	mov	w1, #6
	bl	stbi__skip
	ldr	x0, [sp, #16]
	bl	stbi__get16be
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_7:
	ldr	x0, [sp, #16]
	bl	stbi__get32be
	ldr	x0, [sp, #16]
	bl	stbi__get32be
	ldr	x0, [sp, #16]
	bl	stbi__get16be
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #16
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_9:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__psd_is16, .Lfunc_end0-stbi__psd_is16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_is16
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__skip