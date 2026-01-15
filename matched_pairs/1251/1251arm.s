	.text
	.globl	jv_string_empty                 // -- Begin function jv_string_empty
	.p2align	2
	.type	jv_string_empty,@function
jv_string_empty:                        // @jv_string_empty
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jvp_string_empty_new
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_string_empty, .Lfunc_end0-jv_string_empty
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_empty_new