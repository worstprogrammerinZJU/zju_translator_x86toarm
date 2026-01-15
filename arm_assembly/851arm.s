	.text
	.p2align	2                               // -- Begin function frame_current
	.type	frame_current,@function
frame_current:                          // @frame_current
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #8]
	bl	stack_block
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #8]
	bl	stack_block_next
	ldr	x8, [x0]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	stack_block
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	ldr	x8, [sp, #8]
	ldr	x10, [x8]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.lt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x10, [sp, #8]
	ldr	x10, [x10, #8]
	add	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_5
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	frame_current, .Lfunc_end0-frame_current
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_current
	.addrsig_sym stack_block
	.addrsig_sym stack_block_next
	.addrsig_sym assert