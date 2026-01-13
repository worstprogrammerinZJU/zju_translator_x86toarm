	.text
	.globl	forward_route_layer             // -- Begin function forward_route_layer
	.p2align	2
	.type	forward_route_layer,@function
forward_route_layer:                    // @forward_route_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp]                        // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	stur	wzr, [x29, #-20]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldursw	x10, [x29, #-12]
	ldr	w9, [x9, x10, lsl #2]
	str	w9, [sp, #24]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #24]
	ldr	x9, [x9, x10, lsl #3]
	str	x9, [sp, #16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	stur	wzr, [x29, #-16]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldr	w0, [sp, #12]
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-16]
	ldr	w11, [sp, #12]
	mul	w9, w9, w11
	add	x1, x8, w9, sxtw #2
	ldr	x8, [x10, #32]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9
	ldur	w9, [x29, #-16]
	ldr	w10, [x10, #28]
	mul	w9, w9, w10
	add	x3, x8, w9, sxtw
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	ldur	w8, [x29, #-20]
	add	w8, w8, w9
	stur	w8, [x29, #-20]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	forward_route_layer, .Lfunc_end0-forward_route_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu