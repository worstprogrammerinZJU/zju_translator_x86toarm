	.text
	.globl	jq_util_input_errors            // -- Begin function jq_util_input_errors
	.p2align	2
	.type	jq_util_input_errors,@function
jq_util_input_errors:                   // @jq_util_input_errors
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jq_util_input_errors, .Lfunc_end0-jq_util_input_errors
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig