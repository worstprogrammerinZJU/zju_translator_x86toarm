	.text
	.globl	jv_get_kind                     // -- Begin function jv_get_kind
	.p2align	2
	.type	jv_get_kind,@function
jv_get_kind:                            // @jv_get_kind
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	JVP_KIND
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_get_kind, .Lfunc_end0-jv_get_kind
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_KIND