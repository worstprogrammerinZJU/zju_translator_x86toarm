	.text
	.p2align	2                               // -- Begin function rounddown10
	.type	rounddown10,@function
rounddown10:                            // @rounddown10
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #10
	b.lt	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	mov	w9, #10
	sdiv	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	mov	w8, #1
	str	w8, [sp]
	str	wzr, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp]
	mov	w9, #10
	mul	w8, w8, w9
	str	w8, [sp]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_7:
	ldr	w0, [sp]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	rounddown10, .Lfunc_end0-rounddown10
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rounddown10