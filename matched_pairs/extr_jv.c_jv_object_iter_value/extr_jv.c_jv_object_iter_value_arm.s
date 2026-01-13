	.text
	.globl	jv_object_iter_value            // -- Begin function jv_object_iter_value
	.p2align	2
	.type	jv_object_iter_value,@function
jv_object_iter_value:                   // @jv_object_iter_value
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	jvp_object_get_slot
	ldr	w0, [x0]
	bl	jv_copy
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_object_iter_value, .Lfunc_end0-jv_object_iter_value
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_copy
	.addrsig_sym jvp_object_get_slot