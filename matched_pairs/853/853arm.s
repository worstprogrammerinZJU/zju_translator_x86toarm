	.text
	.p2align	2                               // -- Begin function frame_local_var
	.type	frame_local_var,@function
frame_local_var:                        // @frame_local_var
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #16]
	bl	frame_get_level
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	stack_block
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	w9, [x9, #4]
	ldur	w10, [x29, #-12]
	add	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	frame_local_var, .Lfunc_end0-frame_local_var
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_local_var
	.addrsig_sym stack_block
	.addrsig_sym frame_get_level
	.addrsig_sym assert