	.text
	.globl	jq_set_input_cb                 // -- Begin function jq_set_input_cb
	.p2align	2
	.type	jq_set_input_cb,@function
jq_set_input_cb:                        // @jq_set_input_cb
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	x2, [sp, #8]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_set_input_cb, .Lfunc_end0-jq_set_input_cb
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig