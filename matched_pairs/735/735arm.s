	.text
	.globl	forward_dropout_layer           // -- Begin function forward_dropout_layer
	.p2align	2
	.type	forward_dropout_layer,@function
forward_dropout_layer:                  // @forward_dropout_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp]                        // 8-byte Folded Spill
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_9
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldr	w8, [sp, #12]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	mov	w0, wzr
	mov	w1, #1
	bl	rand_uniform
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	s0, [sp, #8]
	ldr	w9, [sp, #8]
	ldr	x10, [x8, #8]
	ldrsw	x11, [sp, #12]
	str	w9, [x10, x11, lsl #2]
	ldr	s0, [sp, #8]
	ldr	s1, [x8, #16]
	fcmp	s0, s1
	b.pl	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w10, [x8, #20]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	mul	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	forward_dropout_layer, .Lfunc_end0-forward_dropout_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_uniform