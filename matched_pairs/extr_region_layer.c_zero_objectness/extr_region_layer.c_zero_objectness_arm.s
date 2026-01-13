	.text
	.globl	zero_objectness                 // -- Begin function zero_objectness
	.p2align	2
	.type	zero_objectness,@function
zero_objectness:                        // @zero_objectness
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-8]
	ldr	w10, [x8]
	mul	w9, w9, w10
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldur	w10, [x29, #-4]
	add	w2, w9, w10
	ldr	w3, [x8, #24]
	ldr	q0, [x8]
	add	x0, sp, #16
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	mov	w1, wzr
	bl	entry_index
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	w0, [x29, #-12]
	ldr	x9, [x8, #16]
	ldursw	x10, [x29, #-12]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	zero_objectness, .Lfunc_end0-zero_objectness
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym entry_index