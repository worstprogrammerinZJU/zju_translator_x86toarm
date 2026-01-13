	.text
	.globl	jq_util_input_next_input_cb     // -- Begin function jq_util_input_next_input_cb
	.p2align	2
	.type	jq_util_input_next_input_cb,@function
jq_util_input_next_input_cb:            // @jq_util_input_next_input_cb
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	jq_util_input_next_input
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_util_input_next_input_cb, .Lfunc_end0-jq_util_input_next_input_cb
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_util_input_next_input