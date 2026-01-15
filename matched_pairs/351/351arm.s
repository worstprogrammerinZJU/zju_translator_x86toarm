	.text
	.p2align	2                               // -- Begin function test_goto
	.type	test_goto,@function
test_goto:                              // @test_goto
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:
	ldur	w1, [x29, #-4]
	mov	w0, wzr
	bl	expect
	str	wzr, [sp, #8]
	stur	wzr, [x29, #-4]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #10
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [sp, #8]
	add	w8, w9, #1
	str	w8, [sp, #8]
	ldur	w8, [x29, #-4]
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_2
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #11
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w1, [x29, #-4]
	mov	w0, #55
	bl	expect
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_goto, .Lfunc_end0-test_goto
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_goto
	.addrsig_sym expect