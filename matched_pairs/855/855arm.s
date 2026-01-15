	.text
	.p2align	2                               // -- Begin function frame_push
	.type	frame_push,@function
frame_push:                             // @frame_push
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	ldur	x8, [x29, #-24]
	add	x8, x8, #4
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	frame_size
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	stack_push_block
	str	w0, [sp, #40]
	ldur	x8, [x29, #-24]
	add	x0, x8, #4
	ldr	w1, [sp, #40]
	bl	stack_block
	str	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]
	str	x8, [x9, #8]
	ldur	w8, [x29, #-8]
	ldr	x9, [sp, #32]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-36]
	ldr	x9, [sp, #32]
	ldr	x9, [x9, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #20]
	lsl	w9, w9, #1
	add	x1, x8, w9, sxtw #2
	bl	make_closure
	ldr	x8, [sp, #24]
	str	w0, [x8]
	ldr	x8, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #24]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	bl	jv_invalid
	ldr	x8, [sp, #24]
	str	w0, [x8]
	ldr	x8, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_5
.LBB0_8:
	ldr	w8, [sp, #40]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldr	x0, [sp, #32]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	frame_push, .Lfunc_end0-frame_push
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_push
	.addrsig_sym stack_push_block
	.addrsig_sym frame_size
	.addrsig_sym stack_block
	.addrsig_sym assert
	.addrsig_sym make_closure
	.addrsig_sym jv_invalid