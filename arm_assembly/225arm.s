	.text
	.globl	base64_decode_value             // -- Begin function base64_decode_value
	.p2align	2
	.type	base64_decode_value,@function
base64_decode_value:                    // @base64_decode_value
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sturb	w0, [x29, #-1]
	ldur	w0, [x29, #-1]
	bl	base64_decode_value_signed
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	base64_decode_value, .Lfunc_end0-base64_decode_value
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_value_signed