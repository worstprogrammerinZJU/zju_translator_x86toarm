	.text
	.globl	jq_get_error_cb                 // -- Begin function jq_get_error_cb
	.p2align	2
	.type	jq_get_error_cb,@function
jq_get_error_cb:                        // @jq_get_error_cb
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_get_error_cb, .Lfunc_end0-jq_get_error_cb
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig