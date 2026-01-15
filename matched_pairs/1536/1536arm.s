	.text
	.globl	backward_local_layer            // -- Begin function backward_local_layer
	.p2align	2
	.type	backward_local_layer,@function
backward_local_layer:                   // @backward_local_layer
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	mov	x8, x0
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	str	x1, [sp, #48]                   // 8-byte Folded Spill
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	stur	w9, [x29, #-12]
	ldr	w0, [x8, #80]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w1, w9, w10
	ldr	w2, [x8, #76]
	ldr	x3, [x8, #16]
	bl	gradient_array
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	w0, [x8, #8]
	ldr	x9, [x8, #16]
	ldur	w10, [x29, #-4]
	ldr	w11, [x8, #8]
	mul	w10, w10, w11
	add	x2, x9, w10, sxtw #2
	ldr	w4, [x8, #72]
	mov	w5, #1
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
                                        //     Child Loop BB0_12 Depth 2
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	ldr	x10, [x8]
	ldur	w11, [x29, #-4]
	ldr	w12, [x9, #24]
	mul	w11, w11, w12
	ldr	w12, [x9, #28]
	mul	w11, w11, w12
	ldr	w12, [x9, #32]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	stur	x10, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldr	w1, [x9, #32]
	ldr	w2, [x9, #28]
	ldr	w3, [x9, #24]
	ldr	w4, [x9, #36]
	ldr	w5, [x9, #68]
	ldr	w6, [x9, #64]
	ldr	w7, [x8, #16]
	bl	im2col_cpu
	stur	wzr, [x29, #-8]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x10, [x9, #16]
	ldur	w11, [x29, #-4]
	ldr	w12, [x9, #8]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	ldursw	x11, [x29, #-8]
	add	x10, x10, x11, lsl #2
	stur	x10, [x29, #-32]
	ldr	w8, [x8, #16]
	ldur	w10, [x29, #-8]
	add	w10, w8, w10
                                        // implicit-def: $x8
	mov	w8, w10
	sxtw	x8, w8
	stur	x8, [x29, #-40]
	ldr	x8, [x9, #40]
	ldur	w10, [x29, #-8]
	ldr	w11, [x9, #36]
	mul	w10, w10, w11
	ldr	w11, [x9, #36]
	mul	w10, w10, w11
	ldr	w11, [x9, #32]
	mul	w10, w10, w11
	ldr	w11, [x9, #48]
	mul	w10, w10, w11
	add	x8, x8, w10, sxtw #2
	stur	x8, [x29, #-48]
	ldr	w8, [x9, #48]
	stur	w8, [x29, #-52]
	ldr	w8, [x9, #36]
	ldr	w10, [x9, #36]
	mul	w8, w8, w10
	ldr	w9, [x9, #32]
	mul	w8, w8, w9
	stur	w8, [x29, #-56]
	mov	w5, #1
	stur	w5, [x29, #-60]
	ldur	w2, [x29, #-52]
	ldur	w3, [x29, #-56]
	ldur	w4, [x29, #-60]
	ldur	x6, [x29, #-32]
	ldur	w7, [x29, #-12]
	ldur	x12, [x29, #-40]
	ldur	w11, [x29, #-12]
	ldur	x10, [x29, #-48]
	ldur	w8, [x29, #-56]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w0, wzr
	mov	w1, w5
	bl	gemm
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_16
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldr	x10, [x8, #56]
	ldur	w11, [x29, #-8]
	ldr	w12, [x8, #36]
	mul	w11, w11, w12
	ldr	w12, [x8, #36]
	mul	w11, w11, w12
	ldr	w12, [x8, #32]
	mul	w11, w11, w12
	ldr	w12, [x8, #48]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	stur	x10, [x29, #-72]
	ldr	x10, [x8, #16]
	ldur	w11, [x29, #-4]
	ldr	w12, [x8, #8]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	ldursw	x11, [x29, #-8]
	add	x10, x10, x11, lsl #2
	str	x10, [sp, #80]
	ldr	w9, [x9, #16]
	ldur	w10, [x29, #-8]
	add	w10, w9, w10
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	str	x9, [sp, #72]
	ldr	w9, [x8, #36]
	ldr	w10, [x8, #36]
	mul	w9, w9, w10
	ldr	w10, [x8, #32]
	mul	w9, w9, w10
	str	w9, [sp, #68]
	mov	w5, #1
	str	w5, [sp, #64]
	ldr	w8, [x8, #48]
	str	w8, [sp, #60]
	ldr	w2, [sp, #68]
	ldr	w3, [sp, #64]
	ldr	w4, [sp, #60]
	ldur	x6, [x29, #-72]
	ldr	w7, [sp, #68]
	ldr	x12, [sp, #80]
	ldur	w11, [x29, #-12]
	ldr	x10, [sp, #72]
	ldur	w8, [x29, #-12]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w1, wzr
	str	wzr, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w0, w5
	bl	gemm
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_12
.LBB0_15:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x10, [sp, #40]                  // 8-byte Folded Reload
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	w0, [x8, #16]
	ldr	w1, [x10, #32]
	ldr	w2, [x10, #28]
	ldr	w3, [x10, #24]
	ldr	w4, [x10, #36]
	ldr	w5, [x10, #68]
	ldr	w6, [x10, #64]
	ldr	x8, [x8, #8]
	ldur	w9, [x29, #-4]
	ldr	w11, [x10, #32]
	mul	w9, w9, w11
	ldr	w11, [x10, #28]
	mul	w9, w9, w11
	ldr	w10, [x10, #24]
	mul	w9, w9, w10
	add	x7, x8, w9, sxtw
	bl	col2im_cpu
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_18:
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	backward_local_layer, .Lfunc_end0-backward_local_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym axpy_cpu
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym col2im_cpu