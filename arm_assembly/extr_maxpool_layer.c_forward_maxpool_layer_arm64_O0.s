	.text
	.globl	forward_maxpool_layer           // -- Begin function forward_maxpool_layer
	.p2align	2
	.type	forward_maxpool_layer,@function
forward_maxpool_layer:                  // @forward_maxpool_layer
// %bb.0:
	sub	sp, sp, #112
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	str	x1, [sp, #104]
	ldr	w9, [x0]
	mov	w8, wzr
	subs	w10, w8, w9
	mov	w9, #2
	sdiv	w10, w10, w9
	str	w10, [sp, #76]
	ldr	w10, [x0]
	subs	w8, w8, w10
	sdiv	w8, w8, w9
	str	w8, [sp, #72]
	ldr	w8, [x0, #4]
	str	w8, [sp, #68]
	ldr	w8, [x0, #8]
	str	w8, [sp, #64]
	ldr	w8, [x0, #12]
	str	w8, [sp, #60]
	str	wzr, [sp, #100]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
                                        //           Child Loop BB0_9 Depth 5
                                        //             Child Loop BB0_11 Depth 6
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #100]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_37
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #88]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
                                        //           Child Loop BB0_9 Depth 5
                                        //             Child Loop BB0_11 Depth 6
	ldr	w8, [sp, #88]
	ldr	w9, [sp, #60]
	subs	w8, w8, w9
	b.ge	.LBB0_35
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #96]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_7 Depth 4
                                        //           Child Loop BB0_9 Depth 5
                                        //             Child Loop BB0_11 Depth 6
	ldr	w8, [sp, #96]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	b.ge	.LBB0_33
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	str	wzr, [sp, #92]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB0_9 Depth 5
                                        //             Child Loop BB0_11 Depth 6
	ldr	w8, [sp, #92]
	ldr	w9, [sp, #64]
	subs	w8, w8, w9
	b.ge	.LBB0_31
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #92]
	ldr	w9, [sp, #64]
	ldr	w10, [sp, #96]
	ldr	w11, [sp, #68]
	ldr	w12, [sp, #88]
	ldr	w13, [sp, #60]
	ldr	w14, [sp, #100]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #56]
	adrp	x8, FLT_MAX
	ldr	s0, [x8, :lo12:FLT_MAX]
	fneg	s0, s0
	str	s0, [sp, #52]
	mov	w8, #-1
	str	w8, [sp, #48]
	str	wzr, [sp, #80]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        //         Parent Loop BB0_7 Depth=4
                                        // =>        This Loop Header: Depth=5
                                        //             Child Loop BB0_11 Depth 6
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #80]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_29
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=5
	str	wzr, [sp, #84]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        //         Parent Loop BB0_7 Depth=4
                                        //           Parent Loop BB0_9 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #84]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_27
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	x14, [sp, #16]                  // 8-byte Folded Reload
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #96]
	ldr	w10, [x14, #24]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #80]
	add	w8, w8, w9
	str	w8, [sp, #44]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #92]
	ldr	w10, [x14, #24]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #84]
	add	w8, w8, w9
	str	w8, [sp, #40]
	ldr	w8, [sp, #40]
	ldr	w9, [x14, #28]
	ldr	w10, [sp, #44]
	ldr	w11, [x14, #32]
	ldr	w12, [sp, #88]
	ldr	w13, [sp, #100]
	ldr	w14, [x14, #12]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #36]
	ldr	w8, [sp, #44]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_16
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w9, [sp, #44]
	ldr	w10, [x8, #32]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ge	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #40]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #40]
	ldr	w9, [x9, #28]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #36]
	ldr	s0, [x8, x9, lsl #2]
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_19
.LBB0_18:                               //   in Loop: Header=BB0_11 Depth=6
	adrp	x8, FLT_MAX
	ldr	s0, [x8, :lo12:FLT_MAX]
	fneg	s0, s0
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	str	s0, [sp, #28]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #52]
	fcmp	s0, s1
	b.le	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #36]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_22
.LBB0_21:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #48]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #48]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #52]
	fcmp	s0, s1
	b.le	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #28]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_25
.LBB0_24:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #52]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #52]
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_11 Depth=6
	ldr	w8, [sp, #84]
	add	w8, w8, #1
	str	w8, [sp, #84]
	b	.LBB0_11
.LBB0_27:                               //   in Loop: Header=BB0_9 Depth=5
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_9 Depth=5
	ldr	w8, [sp, #80]
	add	w8, w8, #1
	str	w8, [sp, #80]
	b	.LBB0_9
.LBB0_29:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #52]
	ldr	x10, [x9, #40]
	ldrsw	x11, [sp, #56]
	str	w8, [x10, x11, lsl #2]
	ldr	w8, [sp, #48]
	ldr	x9, [x9, #48]
	ldrsw	x10, [sp, #56]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #92]
	add	w8, w8, #1
	str	w8, [sp, #92]
	b	.LBB0_7
.LBB0_31:                               //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #96]
	add	w8, w8, #1
	str	w8, [sp, #96]
	b	.LBB0_5
.LBB0_33:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #88]
	add	w8, w8, #1
	str	w8, [sp, #88]
	b	.LBB0_3
.LBB0_35:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #100]
	add	w8, w8, #1
	str	w8, [sp, #100]
	b	.LBB0_1
.LBB0_37:
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	forward_maxpool_layer, .Lfunc_end0-forward_maxpool_layer
                                        // -- End function
	.type	FLT_MAX,@object                 // @FLT_MAX
	.bss
	.globl	FLT_MAX
	.p2align	2
FLT_MAX:
	.word	0x00000000                      // float 0
	.size	FLT_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym FLT_MAX