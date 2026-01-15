	.text
	.p2align	2                               // -- Begin function frame_pop
	.type	frame_pop,@function
frame_pop:                              // @frame_pop
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	assert
	ldur	x0, [x29, #-8]
	bl	frame_current
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-8]
	add	x0, x8, #4
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	stack_pop_will_free
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	stur	w8, [x29, #-20]
	str	wzr, [sp, #24]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #24]
	mov	w2, wzr
	bl	frame_local_var
	ldr	w0, [x0]
	bl	jv_free
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	frame_size
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	stack_pop_block
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	frame_pop, .Lfunc_end0-frame_pop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_pop
	.addrsig_sym assert
	.addrsig_sym frame_current
	.addrsig_sym stack_pop_will_free
	.addrsig_sym jv_free
	.addrsig_sym frame_local_var
	.addrsig_sym stack_pop_block
	.addrsig_sym frame_size