	.text
	.globl	jv_object                       // -- Begin function jv_object
	.p2align	2
	.type	jv_object,@function
jv_object:                              // @jv_object
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, #8
	bl	jvp_object_new
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	jv_object, .Lfunc_end0-jv_object
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_new