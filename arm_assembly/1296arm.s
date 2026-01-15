	.text
	.p2align	2                               // -- Begin function jvp_object_next_slot
	.type	jvp_object_next_slot,@function
jvp_object_next_slot:                   // @jvp_object_next_slot
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x8, [sp]
	ldr	w1, [x8]
	bl	jvp_object_get_slot
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_object_next_slot, .Lfunc_end0-jvp_object_next_slot
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_next_slot
	.addrsig_sym jvp_object_get_slot