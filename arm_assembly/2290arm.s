	.text
	.p2align	2                               // -- Begin function stbi__start_callbacks
	.type	stbi__start_callbacks,@function
stbi__start_callbacks:                  // @stbi__start_callbacks
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #32]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldur	x9, [x29, #-8]
	mov	w8, #4
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	ldur	x0, [x29, #-8]
	bl	stbi__refill_buffer
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__start_callbacks, .Lfunc_end0-stbi__start_callbacks
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_callbacks
	.addrsig_sym stbi__refill_buffer