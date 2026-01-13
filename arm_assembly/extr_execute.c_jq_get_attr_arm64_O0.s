	.text
	.globl	jq_get_attr                     // -- Begin function jq_get_attr
	.p2align	2
	.type	jq_get_attr,@function
jq_get_attr:                            // @jq_get_attr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_copy
	ldr	w1, [sp, #4]
	bl	jv_object_get
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_get_attr, .Lfunc_end0-jq_get_attr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object_get
	.addrsig_sym jv_copy