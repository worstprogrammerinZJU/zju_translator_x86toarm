	.text
	.p2align	2                               // -- Begin function test_for
	.type	test_for,@function
test_for:                               // @test_for
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	wzr, [x29, #-8]
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #5
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	ldur	w1, [x29, #-8]
	mov	w0, #10
	bl	expect
	stur	wzr, [x29, #-8]
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #5
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_8:
	ldur	w1, [x29, #-8]
	mov	w0, #10
	bl	expect
	stur	wzr, [x29, #-8]
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #100
	b.ge	.LBB0_16
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #5
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_15
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_16
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w9, [x29, #-4]
	ldur	w8, [x29, #-8]
	add	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_16:
	ldur	w1, [x29, #-8]
	mov	w0, #26
	bl	expect
	mov	w8, #3
	stur	w8, [x29, #-12]
	mov	w8, #5
	str	w8, [sp, #16]
	mov	w8, #8
	str	w8, [sp, #12]
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #100
	b.ge	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	ldr	w0, [sp, #12]
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	add	w1, w8, w9
	bl	expect
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #12]
	add	w8, w8, #2
	str	w8, [sp, #12]
	b	.LBB0_17
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_23:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #100
	b.ge	.LBB0_26
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_23 Depth=1
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_23 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_26:
	stur	wzr, [x29, #-4]
	b	.LBB0_27
.LBB0_27:
	mov	w8, #1
	tbz	w8, #0, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	mov	w8, #68
	stur	w8, [x29, #-4]
	b	.LBB0_29
.LBB0_29:
	ldur	w1, [x29, #-4]
	mov	w0, #68
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_for, .Lfunc_end0-test_for
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_for
	.addrsig_sym expect