	.text
	.globl	get_random_data                 // -- Begin function get_random_data
	.p2align	2
	.type	get_random_data,@function
get_random_data:                        // @get_random_data
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	mov	w1, wzr
	mov	x2, #64
	bl	memset
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [x9]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #32]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #8]
	ldr	w8, [x0, #48]
	str	w8, [x9, #48]
	ldr	w8, [x0, #24]
	str	w8, [x9, #24]
	ldur	w0, [x29, #-4]
	mov	w1, #8
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	w0, [x29, #-4]
	bl	calloc
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #16]
	stur	wzr, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w11, [x8, #32]
	sdiv	w10, w0, w11
	mul	w10, w10, w11
	subs	w10, w0, w10
	stur	w10, [x29, #-12]
	ldr	x10, [x8, #40]
	ldursw	x11, [x29, #-12]
	ldr	w10, [x10, x11, lsl #2]
	ldr	x11, [x9, #40]
	ldursw	x12, [x29, #-8]
	str	w10, [x11, x12, lsl #2]
	ldr	x8, [x8, #16]
	ldursw	x10, [x29, #-12]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	get_random_data, .Lfunc_end0-get_random_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand