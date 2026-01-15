	.text
	.p2align	2                               // -- Begin function f_string_indexes
	.type	f_string_indexes,@function
f_string_indexes:                       // @f_string_indexes
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w0, [sp, #4]
	ldr	w1, [sp]
	bl	jv_string_indexes
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_string_indexes, .Lfunc_end0-f_string_indexes
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_string_indexes
	.addrsig_sym jv_string_indexes