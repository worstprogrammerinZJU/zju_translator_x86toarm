	.text
	.globl	make_vector                     // -- Begin function make_vector
	.p2align	2
	.type	make_vector,@function
make_vector:                            // @make_vector
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, wzr
	bl	do_make_vector
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	make_vector, .Lfunc_end0-make_vector
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector