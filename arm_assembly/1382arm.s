	.text
	.p2align	2                               // -- Begin function stream_check_done
	.type	stream_check_done,@function
stream_check_done:                      // @stream_check_done
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	bl	jv_copy
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #16]
	bl	JV_ARRAY
	ldr	x8, [sp, #8]
	str	x0, [x8]
	bl	jv_invalid
	ldr	x8, [sp, #16]
	str	x0, [x8, #16]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	jv_is_valid
	cbz	x0, .LBB0_8
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	jv_copy
	bl	jv_array_length
	subs	w8, w0, #2
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	jv_copy
	mov	w1, wzr
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	mov	w2, #2
	bl	jv_array_slice
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x0, [x8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w2, #1
	bl	jv_array_slice
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	bl	jv_invalid
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	b	.LBB0_7
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stream_check_done, .Lfunc_end0-stream_check_done
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_check_done
	.addrsig_sym jv_is_valid
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid
	.addrsig_sym jv_array_length
	.addrsig_sym jv_array_slice