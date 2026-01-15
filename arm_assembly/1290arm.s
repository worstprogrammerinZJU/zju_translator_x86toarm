	.text
	.p2align	2                               // -- Begin function jvp_object_find_slot
	.type	jvp_object_find_slot,@function
jvp_object_find_slot:                   // @jvp_object_find_slot
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-12]
	stur	w1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	w0, [x29, #-16]
	bl	jvp_string_hash
	str	x0, [sp, #16]
	ldur	w0, [x29, #-12]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	jvp_object_get_slot
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #8]
	bl	jvp_string_equal
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_8
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-12]
	ldr	x1, [sp, #8]
	bl	jvp_object_next_slot
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_7:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_object_find_slot, .Lfunc_end0-jvp_object_find_slot
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_find_slot
	.addrsig_sym jvp_string_hash
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jvp_string_equal
	.addrsig_sym jvp_object_next_slot