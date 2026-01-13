	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function denormalize_deconvolutional_layer
.LCPI0_0:
	.xword	0x3ee4f8b588e368f1              // double 1.0000000000000001E-5
	.text
	.globl	denormalize_deconvolutional_layer
	.p2align	2
	.type	denormalize_deconvolutional_layer,@function
denormalize_deconvolutional_layer:      // @denormalize_deconvolutional_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldursw	x10, [x29, #-4]
	ldr	s0, [x9, x10, lsl #2]
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-4]
	ldr	d0, [x8, x9, lsl #3]
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fadd	d0, d0, d1
	bl	sqrt
	fmov	s1, s0
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	fdiv	s0, s0, s1
	stur	s0, [x29, #-12]
	stur	wzr, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x10, #24]
	ldr	w11, [x10, #28]
	mul	w9, w9, w11
	ldr	w10, [x10, #28]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	s1, [x29, #-12]
	ldr	x8, [x10, #32]
	ldur	w9, [x29, #-4]
	ldr	w11, [x10, #24]
	mul	w9, w9, w11
	ldr	w11, [x10, #28]
	mul	w9, w9, w11
	ldr	w10, [x10, #28]
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #48]
	ldursw	x10, [x29, #-4]
	ldr	s0, [x9, x10, lsl #2]
	ldur	s1, [x29, #-12]
	ldr	x9, [x8, #40]
	ldursw	x10, [x29, #-4]
	add	x9, x9, x10, lsl #2
	ldr	s2, [x9]
	fmsub	s0, s0, s1, s2
	str	s0, [x9]
	ldr	x9, [x8, #8]
	ldursw	x10, [x29, #-4]
	fmov	s0, #1.00000000
	str	s0, [x9, x10, lsl #2]
	ldr	x9, [x8, #48]
	ldursw	x10, [x29, #-4]
	movi	d0, #0000000000000000
	str	s0, [x9, x10, lsl #2]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-4]
	fmov	d0, #1.00000000
	str	d0, [x8, x9, lsl #3]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	denormalize_deconvolutional_layer, .Lfunc_end0-denormalize_deconvolutional_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt