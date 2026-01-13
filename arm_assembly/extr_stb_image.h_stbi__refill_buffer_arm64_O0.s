	.text
	.p2align	2                               // -- Begin function stbi__refill_buffer
	.type	stbi__refill_buffer,@function
stbi__refill_buffer:                    // @stbi__refill_buffer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	ldr	x9, [sp, #8]
	ldr	w0, [x9, #36]
	ldr	x9, [sp, #8]
	ldr	x1, [x9]
	ldr	x9, [sp, #8]
	ldr	w2, [x9, #32]
	blr	x8
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	add	x8, x8, #8
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	xzr, [x8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9, lsl #3
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__refill_buffer, .Lfunc_end0-stbi__refill_buffer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__refill_buffer