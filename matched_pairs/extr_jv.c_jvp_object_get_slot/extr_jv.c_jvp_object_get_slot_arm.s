	.text
	.p2align	2                               // -- Begin function jvp_object_get_slot
	.type	jvp_object_get_slot,@function
jvp_object_get_slot:                    // @jvp_object_get_slot
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	w1, [sp, #16]
	ldr	w9, [sp, #16]
	mov	w8, #1
	adds	w9, w9, #1
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #16]
	mov	w9, #0
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_object_size
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, lt
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #16]
	adds	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_7
.LBB0_6:
	ldur	w0, [x29, #-12]
	bl	jvp_object_ptr
	ldr	x8, [x0]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_object_get_slot, .Lfunc_end0-jvp_object_get_slot
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym assert
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_ptr