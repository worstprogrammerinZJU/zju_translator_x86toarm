	.text
	.p2align	2                               // -- Begin function test_label
	.type	test_label,@function
test_label:                             // @test_label
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	mov	w0, #1
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	str	wzr, [sp, #8]
	mov	w8, wzr
	tbz	w8, #0, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	w1, [sp, #8]
	mov	w0, wzr
	bl	expect
	str	wzr, [sp, #4]
	mov	w8, #7
	subs	w8, w8, #5
	b.eq	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	mov	w8, #7
	subs	w8, w8, #6
	b.eq	.LBB0_11
	b	.LBB0_6
.LBB0_6:
	mov	w8, #7
	subs	w8, w8, #7
	b.eq	.LBB0_9
	b	.LBB0_12
.LBB0_7:
	ldr	w8, [sp, #4]
	add	w8, w8, #2
	str	w8, [sp, #4]
	mov	w8, wzr
	tbz	w8, #0, .LBB0_10
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]
	add	w8, w8, #3
	str	w8, [sp, #4]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]
	add	w8, w8, #5
	str	w8, [sp, #4]
	b	.LBB0_12
.LBB0_12:
	ldr	w1, [sp, #4]
	mov	w0, #8
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_label, .Lfunc_end0-test_label
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_label
	.addrsig_sym expect