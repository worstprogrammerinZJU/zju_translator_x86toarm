	.text
	.p2align	2                               // -- Begin function stbi__zreceive
	.type	stbi__zreceive,@function
stbi__zreceive:                         // @stbi__zreceive
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	stbi__fill_bits
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	ldr	w10, [sp, #4]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w9, w9, #1
	and	w8, w8, w9
	str	w8, [sp]
	ldr	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	asr	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__zreceive, .Lfunc_end0-stbi__zreceive
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zreceive
	.addrsig_sym stbi__fill_bits