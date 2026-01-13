	.text
	.p2align	2                               // -- Begin function empty_struct
	.type	empty_struct,@function
empty_struct:                           // @empty_struct
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w1, wzr
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	empty_struct, .Lfunc_end0-empty_struct
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym empty_struct
	.addrsig_sym expect