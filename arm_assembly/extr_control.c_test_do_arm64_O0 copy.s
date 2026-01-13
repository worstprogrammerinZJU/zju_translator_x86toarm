	.text
	.p2align	2                               // -- Begin function test_do
	.type	test_do,@function
test_do:                                // @test_do
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	add	w10, w9, #1
	str	w10, [sp, #8]
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #100
	b.le	.LBB0_1
	b	.LBB0_3
.LBB0_3:
	ldur	w1, [x29, #-4]
	mov	w0, #5050
	bl	expect
	str	wzr, [sp, #8]
	b	.LBB0_4
.LBB0_4:
	mov	w8, #37
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_5:
	ldr	w1, [sp, #8]
	mov	w0, #37
	bl	expect
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	add	w9, w8, #1
	str	w9, [sp, #8]
	subs	w8, w8, #5
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_11
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w9, [sp, #8]
	ldur	w8, [x29, #-4]
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	ldr	w8, [sp, #8]
	subs	w8, w8, #9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_12
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #10
	b.lt	.LBB0_6
	b	.LBB0_12
.LBB0_12:
	ldur	w1, [x29, #-4]
	mov	w0, #30
	bl	expect
	str	wzr, [sp, #8]
	b	.LBB0_13
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #8]
	add	w9, w8, #1
	str	w9, [sp, #8]
	subs	w8, w8, #100
	b.lt	.LBB0_13
	b	.LBB0_15
.LBB0_15:
	str	wzr, [sp, #8]
	b	.LBB0_16
.LBB0_16:                               // =>This Inner Loop Header: Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=1
	ldr	w8, [sp, #8]
	add	w9, w8, #1
	str	w9, [sp, #8]
	subs	w8, w8, #100
	b.lt	.LBB0_16
	b	.LBB0_18
.LBB0_18:
	fmov	s0, #1.00000000
	str	s0, [sp, #4]
	mov	w8, #70
	str	w8, [sp, #8]
	b	.LBB0_19
.LBB0_19:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=1
	ldr	s0, [sp, #4]
	fcvt	d0, s0
	fmov	d1, #0.50000000
	fsub	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #4]
	fcmp	s0, #0.0
	b.ne	.LBB0_19
	b	.LBB0_21
.LBB0_21:
	ldr	w1, [sp, #8]
	mov	w0, #72
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_do, .Lfunc_end0-test_do
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_do
	.addrsig_sym expect