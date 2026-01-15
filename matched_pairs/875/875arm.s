	.text
	.globl	jq_set_attr                     // -- Begin function jq_set_attr
	.p2align	2
	.type	jq_set_attr,@function
jq_set_attr:                            // @jq_set_attr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	w1, [sp, #4]
	ldr	w2, [sp]
	bl	jv_object_set
	ldr	x8, [sp, #8]
	str	w0, [x8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_set_attr, .Lfunc_end0-jq_set_attr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object_set