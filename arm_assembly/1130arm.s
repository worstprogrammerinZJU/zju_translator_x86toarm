	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function rgb_to_yuv
.LCPI0_0:
	.xword	0xbfb99a415f45e0b5              // double -0.10001
.LCPI0_1:
	.xword	0x3fe3ae147ae147ae              // double 0.61499999999999999
.LCPI0_2:
	.xword	0xbfe07acc4ef88b97              // double -0.51498999999999995
.LCPI0_3:
	.xword	0x3fdbe76c8b439581              // double 0.436
.LCPI0_4:
	.xword	0xbfc2d527e5215769              // double -0.14713000000000001
.LCPI0_5:
	.xword	0xbfd27caea747d806              // double -0.28886000000000001
.LCPI0_6:
	.xword	0x3fbd2f1a9fbe76c9              // double 0.114
.LCPI0_7:
	.xword	0x3fd322d0e5604189              // double 0.29899999999999999
.LCPI0_8:
	.xword	0x3fe2c8b439581062              // double 0.58699999999999997
	.text
	.globl	rgb_to_yuv
	.p2align	2
	.type	rgb_to_yuv,@function
rgb_to_yuv:                             // @rgb_to_yuv
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #3
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	stur	wzr, [x29, #-40]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-36]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-80]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-72]
	ldur	x0, [x29, #-80]
	ldur	x1, [x29, #-72]
	mov	w4, wzr
	str	w4, [sp, #4]                    // 4-byte Folded Spill
	bl	get_pixel
	stur	s0, [x29, #-44]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #80]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #88]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	mov	w4, #1
	str	w4, [sp, #8]                    // 4-byte Folded Spill
	bl	get_pixel
	stur	s0, [x29, #-48]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #64]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	mov	w4, #2
	str	w4, [sp, #12]                   // 4-byte Folded Spill
	bl	get_pixel
	ldr	w4, [sp, #4]                    // 4-byte Folded Reload
	stur	s0, [x29, #-52]
	ldur	s0, [x29, #-44]
	fcvt	d1, s0
	ldur	s0, [x29, #-48]
	fcvt	d2, s0
	adrp	x8, .LCPI0_8
	ldr	d0, [x8, :lo12:.LCPI0_8]
	fmul	d2, d0, d2
	adrp	x8, .LCPI0_7
	ldr	d0, [x8, :lo12:.LCPI0_7]
	fmadd	d2, d0, d1, d2
	ldur	s0, [x29, #-52]
	fcvt	d1, s0
	adrp	x8, .LCPI0_6
	ldr	d0, [x8, :lo12:.LCPI0_6]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	stur	s0, [x29, #-56]
	ldur	s0, [x29, #-44]
	fcvt	d1, s0
	ldur	s0, [x29, #-48]
	fcvt	d2, s0
	adrp	x8, .LCPI0_5
	ldr	d0, [x8, :lo12:.LCPI0_5]
	fmul	d2, d0, d2
	adrp	x8, .LCPI0_4
	ldr	d0, [x8, :lo12:.LCPI0_4]
	fmadd	d2, d0, d1, d2
	ldur	s0, [x29, #-52]
	fcvt	d1, s0
	adrp	x8, .LCPI0_3
	ldr	d0, [x8, :lo12:.LCPI0_3]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	stur	s0, [x29, #-60]
	ldur	s0, [x29, #-44]
	fcvt	d1, s0
	ldur	s0, [x29, #-48]
	fcvt	d2, s0
	adrp	x8, .LCPI0_2
	ldr	d0, [x8, :lo12:.LCPI0_2]
	fmul	d2, d0, d2
	adrp	x8, .LCPI0_1
	ldr	d0, [x8, :lo12:.LCPI0_1]
	fmadd	d2, d0, d1, d2
	ldur	s0, [x29, #-52]
	fcvt	d1, s0
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	stur	s0, [x29, #-64]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #56]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	set_pixel
	ldr	w4, [sp, #8]                    // 4-byte Folded Reload
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-60]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	set_pixel
	ldr	w4, [sp, #12]                   // 4-byte Folded Reload
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-64]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	set_pixel
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	rgb_to_yuv, .Lfunc_end0-rgb_to_yuv
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel