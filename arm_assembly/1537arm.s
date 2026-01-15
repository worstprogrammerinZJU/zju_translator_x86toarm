	.text
	.globl	forward_local_layer             // -- Begin function forward_local_layer
	.p2align	2
	.type	forward_local_layer,@function
forward_local_layer:                    // @forward_local_layer
// %bb.0:
	sub	sp, sp, #352
	stp	x29, x30, [sp, #320]            // 16-byte Folded Spill
	str	x28, [sp, #336]                 // 8-byte Folded Spill
	add	x29, sp, #320
	sub	x8, x29, #16
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	mov	x9, x1
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	str	x9, [x8]
	str	x2, [x8, #8]
	sub	x0, x29, #88
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	mov	x2, #64
	str	x2, [sp, #72]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	bl	local_out_height
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	stur	w0, [x29, #-20]
	add	x0, sp, #160
	str	x0, [sp, #80]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	bl	local_out_width
	stur	w0, [x29, #-92]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-92]
	mul	w8, w8, w9
	str	w8, [sp, #148]
	str	wzr, [sp, #156]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	ldr	w8, [sp, #156]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #64]                  // 8-byte Folded Reload
	ldr	w0, [x10, #4]
	ldr	w1, [x10, #56]
	ldr	x8, [x10, #8]
	ldr	w9, [sp, #156]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	x3, x8, w9, sxtw #2
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #156]
	add	w8, w8, #1
	str	w8, [sp, #156]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #156]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	ldr	w8, [sp, #156]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldr	x9, [x9]
	ldr	w10, [sp, #156]
	ldr	w11, [x8, #16]
	mul	w10, w10, w11
	ldr	w11, [x8, #20]
	mul	w10, w10, w11
	ldr	w11, [x8, #24]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	str	x9, [sp, #136]
	ldr	x0, [sp, #136]
	ldr	w1, [x8, #24]
	ldr	w2, [x8, #20]
	ldr	w3, [x8, #16]
	ldr	w4, [x8, #28]
	ldr	w5, [x8, #52]
	ldr	w6, [x8, #48]
	ldur	w7, [x29, #-8]
	bl	im2col_cpu
	ldr	x10, [sp, #64]                  // 8-byte Folded Reload
	ldr	x8, [x10, #8]
	ldr	w9, [sp, #156]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #128]
	str	wzr, [sp, #152]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #152]
	ldr	w9, [sp, #148]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	ldr	x8, [x9, #32]
	ldr	w10, [sp, #152]
	ldr	w11, [x9, #28]
	mul	w10, w10, w11
	ldr	w11, [x9, #28]
	mul	w10, w10, w11
	ldr	w11, [x9, #24]
	mul	w10, w10, w11
	ldr	w11, [x9, #40]
	mul	w10, w10, w11
	add	x8, x8, w10, sxtw #2
	str	x8, [sp, #120]
	ldur	w8, [x29, #-8]
	ldr	w10, [sp, #152]
	add	w10, w8, w10
                                        // implicit-def: $x8
	mov	w8, w10
	sxtw	x8, w8
	str	x8, [sp, #112]
	ldr	x8, [sp, #128]
	ldrsw	x10, [sp, #152]
	add	x8, x8, x10, lsl #2
	str	x8, [sp, #104]
	ldr	w8, [x9, #40]
	str	w8, [sp, #100]
	mov	w5, #1
	str	w5, [sp, #96]
	ldr	w8, [x9, #28]
	ldr	w10, [x9, #28]
	mul	w8, w8, w10
	ldr	w9, [x9, #24]
	mul	w8, w8, w9
	str	w8, [sp, #92]
	ldr	w2, [sp, #100]
	ldr	w3, [sp, #96]
	ldr	w4, [sp, #92]
	ldr	x6, [sp, #120]
	ldr	w7, [sp, #92]
	ldr	x12, [sp, #112]
	ldr	w11, [sp, #148]
	ldr	x10, [sp, #104]
	ldr	w8, [sp, #148]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w1, wzr
	mov	w0, w1
	bl	gemm
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #152]
	add	w8, w8, #1
	str	w8, [sp, #152]
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #156]
	add	w8, w8, #1
	str	w8, [sp, #156]
	b	.LBB0_5
.LBB0_12:
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	w9, [x8, #4]
	ldr	w10, [x8]
	mul	w1, w9, w10
	ldr	w2, [x8, #44]
	bl	activate_array
	ldr	x28, [sp, #336]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #320]            // 16-byte Folded Reload
	add	sp, sp, #352
	ret
.Lfunc_end0:
	.size	forward_local_layer, .Lfunc_end0-forward_local_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_out_height
	.addrsig_sym local_out_width
	.addrsig_sym copy_cpu
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym activate_array