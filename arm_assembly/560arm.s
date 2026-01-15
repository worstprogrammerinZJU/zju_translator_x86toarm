	.text
	.globl	smooth_data                     // -- Begin function smooth_data
	.p2align	2
	.type	smooth_data,@function
smooth_data:                            // @smooth_data
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	s1, [sp, #16]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #4]
	mov	w8, #52429
	movk	w8, #15820, lsl #16
	fmov	s0, w8
	str	s0, [sp]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	s0, [sp]
	ldr	s1, [sp, #4]
	ldr	s3, [sp]
	fmov	s2, #1.00000000
	fsub	s2, s2, s3
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	ldr	s3, [x8, x9, lsl #2]
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_8:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	smooth_data, .Lfunc_end0-smooth_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig