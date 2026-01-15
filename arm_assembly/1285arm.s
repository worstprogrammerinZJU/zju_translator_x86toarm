	.text
	.p2align	2                               // -- Begin function jvp_object_add_slot
	.type	jvp_object_add_slot,@function
jvp_object_add_slot:                    // @jvp_object_add_slot
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-12]
	stur	w1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	w0, [x29, #-12]
	bl	jvp_object_ptr
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_object_size
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #28]
	bl	jvp_object_get_slot
	str	x0, [sp, #16]
	ldr	x9, [sp, #32]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldur	w0, [x29, #-16]
	bl	jvp_string_hash
	ldr	x8, [sp, #16]
	str	w0, [x8, #8]
	ldur	w8, [x29, #-16]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_object_add_slot, .Lfunc_end0-jvp_object_add_slot
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_add_slot
	.addrsig_sym jvp_object_ptr
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jvp_string_hash