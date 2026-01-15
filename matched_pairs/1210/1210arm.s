	.text
	.globl	jv_array_append                 // -- Begin function jv_array_append
	.p2align	2
	.type	jv_array_append,@function
jv_array_append:                        // @jv_array_append
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_array_length
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w2, [sp, #8]
	bl	jv_array_set
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_array_append, .Lfunc_end0-jv_array_append
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_array_set
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy