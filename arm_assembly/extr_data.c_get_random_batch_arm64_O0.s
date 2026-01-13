	.text
	.globl	get_random_batch                // -- Begin function get_random_batch
	.p2align	2
	.type	get_random_batch,@function
get_random_batch:                       // @get_random_batch
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	x2, [x29, #-16]
	str	x3, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w10, [x8, #16]
	sdiv	w9, w0, w10
	mul	w9, w9, w10
	subs	w9, w0, w9
	str	w9, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	w10, [sp, #20]
	ldr	w11, [x8, #20]
	mul	w10, w10, w11
	add	x0, x9, w10, sxtw #2
	ldr	x9, [x8, #24]
	ldrsw	x10, [sp, #16]
	ldr	w1, [x9, x10, lsl #2]
	ldrsw	x8, [x8, #20]
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	ldr	w11, [x8]
	mul	w10, w10, w11
	add	x0, x9, w10, sxtw #2
	ldr	x9, [x8, #8]
	ldrsw	x10, [sp, #16]
	ldr	w1, [x9, x10, lsl #2]
	ldrsw	x8, [x8]
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	get_random_batch, .Lfunc_end0-get_random_batch
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand
	.addrsig_sym memcpy