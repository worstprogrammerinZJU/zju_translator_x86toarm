	.text
	.globl	shortcut_cpu                    // -- Begin function shortcut_cpu
	.p2align	2
	.type	shortcut_cpu,@function
shortcut_cpu:                           // @shortcut_cpu
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	ldr	x8, [x29, #16]
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	x4, [x29, #-24]
	stur	w5, [x29, #-28]
	stur	w6, [x29, #-32]
	stur	w7, [x29, #-36]
	stur	s0, [x29, #-40]
	stur	s1, [x29, #-44]
	str	x8, [sp, #56]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-28]
	sdiv	w8, w8, w9
	str	w8, [sp, #52]
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-8]
	sdiv	w8, w8, w9
	str	w8, [sp, #48]
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-32]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #48]
	ldur	w9, [x29, #-32]
	ldur	w10, [x29, #-12]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #52]
	subs	w8, w8, #1
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #52]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #48]
	subs	w8, w8, #1
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #48]
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	ldur	w8, [x29, #-28]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #44]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_9:
	ldur	w8, [x29, #-32]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #40]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	w8, [x29, #-16]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_12:
	ldur	w8, [x29, #-36]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #36]
	str	wzr, [sp, #20]
	b	.LBB0_14
.LBB0_14:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_16 Depth 2
                                        //       Child Loop BB0_18 Depth 3
                                        //         Child Loop BB0_20 Depth 4
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_29
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=1
	str	wzr, [sp, #24]
	b	.LBB0_16
.LBB0_16:                               //   Parent Loop BB0_14 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_18 Depth 3
                                        //         Child Loop BB0_20 Depth 4
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_27
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=2
	str	wzr, [sp, #28]
	b	.LBB0_18
.LBB0_18:                               //   Parent Loop BB0_14 Depth=1
                                        //     Parent Loop BB0_16 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_20 Depth 4
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=3
	str	wzr, [sp, #32]
	b	.LBB0_20
.LBB0_20:                               //   Parent Loop BB0_14 Depth=1
                                        //     Parent Loop BB0_16 Depth=2
                                        //       Parent Loop BB0_18 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=4
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #48]
	mul	w8, w8, w9
	ldur	w9, [x29, #-28]
	ldr	w10, [sp, #28]
	ldr	w11, [sp, #48]
	mul	w10, w10, w11
	ldur	w11, [x29, #-32]
	ldr	w12, [sp, #24]
	ldur	w13, [x29, #-36]
	ldr	w14, [sp, #20]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #52]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [sp, #28]
	ldr	w11, [sp, #52]
	mul	w10, w10, w11
	ldur	w11, [x29, #-12]
	ldr	w12, [sp, #24]
	ldur	w13, [x29, #-16]
	ldr	w14, [sp, #20]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldur	s0, [x29, #-40]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #16]
	ldr	s1, [x8, x9, lsl #2]
	ldur	s2, [x29, #-44]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #12]
	ldr	s3, [x8, x9, lsl #2]
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #16]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=4
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_20
.LBB0_23:                               //   in Loop: Header=BB0_18 Depth=3
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_18 Depth=3
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_18
.LBB0_25:                               //   in Loop: Header=BB0_16 Depth=2
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_16
.LBB0_27:                               //   in Loop: Header=BB0_14 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_14 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_14
.LBB0_29:
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	shortcut_cpu, .Lfunc_end0-shortcut_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert