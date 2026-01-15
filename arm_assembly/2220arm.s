	.text
	.p2align	2                               // -- Begin function stbi__high_bit
	.type	stbi__high_bit,@function
stbi__high_bit:                         // @stbi__high_bit
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	str	wzr, [sp, #4]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #-1
	str	w8, [sp, #12]
	b	.LBB0_13
.LBB0_2:
	ldr	w8, [sp, #8]
	subs	w8, w8, #16, lsl #12            // =65536
	b.lo	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]
	add	w8, w8, #16
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	lsr	w8, w8, #16
	str	w8, [sp, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #256
	b.lo	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]
	add	w8, w8, #8
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	lsr	w8, w8, #8
	str	w8, [sp, #8]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]
	subs	w8, w8, #16
	b.lo	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #4]
	add	w8, w8, #4
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	lsr	w8, w8, #4
	str	w8, [sp, #8]
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #8]
	subs	w8, w8, #4
	b.lo	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]
	add	w8, w8, #2
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	lsr	w8, w8, #2
	str	w8, [sp, #8]
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #8]
	subs	w8, w8, #2
	b.lo	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	lsr	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	.LBB0_13
.LBB0_13:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__high_bit, .Lfunc_end0-stbi__high_bit
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__high_bit