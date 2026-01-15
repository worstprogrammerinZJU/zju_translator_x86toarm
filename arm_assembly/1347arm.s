	.text
	.globl	jvp_dtoa_context_free           // -- Begin function jvp_dtoa_context_free
	.p2align	2
	.type	jvp_dtoa_context_free,@function
jvp_dtoa_context_free:                  // @jvp_dtoa_context_free
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	Bfree
	b	.LBB0_1
.LBB0_3:
	stur	wzr, [x29, #-12]
	b	.LBB0_4
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	b.ge	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-12]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-12]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-12]
	str	x8, [x9, x10, lsl #3]
	ldr	x0, [sp]
	bl	FREE
	b	.LBB0_6
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_4
.LBB0_10:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_dtoa_context_free, .Lfunc_end0-jvp_dtoa_context_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Bfree
	.addrsig_sym FREE