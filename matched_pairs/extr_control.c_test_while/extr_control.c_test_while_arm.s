	.text
	.p2align	2                               // -- Begin function test_while
	.type	test_while,@function
test_while:                             // @test_while
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #100
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	add	w10, w9, #1
	str	w10, [sp, #8]
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_3:
	ldur	w1, [x29, #-4]
	mov	w0, #5050
	bl	expect
	mov	w8, #1
	stur	w8, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #100
	b.gt	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	add	w10, w9, #1
	str	w10, [sp, #8]
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_6:
	ldur	w1, [x29, #-4]
	mov	w0, #5051
	bl	expect
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #10
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #8]
	add	w9, w8, #1
	str	w9, [sp, #8]
	subs	w8, w8, #5
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w9, [sp, #8]
	ldur	w8, [x29, #-4]
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	ldr	w8, [sp, #8]
	subs	w8, w8, #9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_7
.LBB0_13:
	ldur	w1, [x29, #-4]
	mov	w0, #30
	bl	expect
	str	wzr, [sp, #8]
	b	.LBB0_14
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	add	w9, w8, #1
	str	w9, [sp, #8]
	subs	w8, w8, #100
	b.ge	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=1
	b	.LBB0_14
.LBB0_16:
	str	wzr, [sp, #8]
	b	.LBB0_17
.LBB0_17:
	mov	w8, #67
	str	w8, [sp, #8]
	b	.LBB0_18
.LBB0_18:
	ldr	w1, [sp, #8]
	mov	w0, #67
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_while, .Lfunc_end0-test_while
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_while
	.addrsig_sym expect