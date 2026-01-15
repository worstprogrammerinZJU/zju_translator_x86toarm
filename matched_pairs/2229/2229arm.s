	.text
	.p2align	2                               // -- Begin function stbi__jpeg_get_bit
	.type	stbi__jpeg_get_bit,@function
stbi__jpeg_get_bit:                     // @stbi__jpeg_get_bit
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	stbi__grow_buffer_unsafe
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	str	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	lsl	w8, w8, #1
	str	w8, [x9, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	w8, [sp, #4]
	and	w0, w8, #0x80000000
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__jpeg_get_bit, .Lfunc_end0-stbi__jpeg_get_bit
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_get_bit
	.addrsig_sym stbi__grow_buffer_unsafe