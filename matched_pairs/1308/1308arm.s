	.text
	.p2align	2                               // -- Begin function jvp_string_length
	.type	jvp_string_length,@function
jvp_string_length:                      // @jvp_string_length
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	asr	w0, w8, #1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jvp_string_length, .Lfunc_end0-jvp_string_length
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_length