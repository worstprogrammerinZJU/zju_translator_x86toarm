	.text
	.p2align	2                               // -- Begin function jvp_array_equal
	.type	jvp_array_equal,@function
jvp_array_equal:                        // @jvp_array_equal
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-8]
	bl	jvp_array_length
	stur	w0, [x29, #-20]                 // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_array_length
	mov	w8, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w0, w8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	jvp_array_ptr
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_array_ptr
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-8]
	bl	jvp_array_offset
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_array_offset
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_5:
	stur	wzr, [x29, #-16]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jvp_array_length
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-16]
	bl	jvp_array_read
	ldr	w0, [x0]
	bl	jv_copy
	str	w0, [sp]                        // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	bl	jvp_array_read
	ldr	w0, [x0]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	jv_equal
	cbnz	w0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_6
.LBB0_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_array_equal, .Lfunc_end0-jvp_array_equal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_equal
	.addrsig_sym jvp_array_length
	.addrsig_sym jvp_array_ptr
	.addrsig_sym jvp_array_offset
	.addrsig_sym jv_equal
	.addrsig_sym jv_copy
	.addrsig_sym jvp_array_read