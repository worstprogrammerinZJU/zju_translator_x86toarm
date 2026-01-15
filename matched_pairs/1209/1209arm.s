	.text
	.globl	jv_array                        // -- Begin function jv_array
	.p2align	2
	.type	jv_array,@function
jv_array:                               // @jv_array
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, #16
	bl	jv_array_sized
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	jv_array, .Lfunc_end0-jv_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_array_sized