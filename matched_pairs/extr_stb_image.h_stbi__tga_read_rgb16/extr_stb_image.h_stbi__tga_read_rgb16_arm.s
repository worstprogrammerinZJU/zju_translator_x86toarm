	.text
	.p2align	2                               // -- Begin function stbi__tga_read_rgb16
	.type	stbi__tga_read_rgb16,@function
stbi__tga_read_rgb16:                   // @stbi__tga_read_rgb16
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	stbi__get16le
	stur	w0, [x29, #-20]
	mov	w9, #31
	str	w9, [sp, #24]
	ldur	w10, [x29, #-20]
	ldr	w8, [sp, #24]
	and	w8, w8, w10, asr #10
	str	w8, [sp, #20]
	ldur	w10, [x29, #-20]
	ldr	w8, [sp, #24]
	and	w8, w8, w10, asr #5
	str	w8, [sp, #16]
	ldur	w8, [x29, #-20]
	ldr	w10, [sp, #24]
	and	w8, w8, w10
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	mov	w10, #255
	mul	w8, w8, w10
	sdiv	w11, w8, w9
                                        // implicit-def: $x8
	mov	w8, w11
	sxtw	x8, w8
	ldur	x11, [x29, #-16]
	str	x8, [x11]
	ldr	w8, [sp, #16]
	mul	w8, w8, w10
	sdiv	w11, w8, w9
                                        // implicit-def: $x8
	mov	w8, w11
	sxtw	x8, w8
	ldur	x11, [x29, #-16]
	str	x8, [x11, #8]
	ldr	w8, [sp, #12]
	mul	w8, w8, w10
	sdiv	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__tga_read_rgb16, .Lfunc_end0-stbi__tga_read_rgb16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_read_rgb16
	.addrsig_sym stbi__get16le