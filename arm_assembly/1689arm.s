	.text
	.globl	hold_out_matrix                 // -- Begin function hold_out_matrix
	.p2align	2
	.type	hold_out_matrix,@function
hold_out_matrix:                        // @hold_out_matrix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w9, [x29, #-12]
	str	w9, [x8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	str	w9, [x8, #16]
	ldr	w0, [x8]
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x0, [x8, #8]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	w10, [x8]
	sdiv	w8, w0, w10
	mul	w8, w8, w10
	subs	w8, w0, w8
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldrsw	x10, [sp, #12]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-8]
	ldr	w9, [x10]
	subs	w9, w9, #1
	str	w9, [x10]
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	hold_out_matrix, .Lfunc_end0-hold_out_matrix
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand