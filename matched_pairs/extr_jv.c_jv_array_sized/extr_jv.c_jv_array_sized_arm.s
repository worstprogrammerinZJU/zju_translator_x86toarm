	.text
	.globl	jv_array_sized                  // -- Begin function jv_array_sized
	.p2align	2
	.type	jv_array_sized,@function
jv_array_sized:                         // @jv_array_sized
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jvp_array_new
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_array_sized, .Lfunc_end0-jv_array_sized
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_new