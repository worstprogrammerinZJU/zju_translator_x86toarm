	.text
	.globl	make_vector1                    // -- Begin function make_vector1
	.p2align	2
	.type	make_vector1,@function
make_vector1:                           // @make_vector1
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	mov	w0, wzr
	bl	do_make_vector
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	vec_push
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_vector1, .Lfunc_end0-make_vector1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector
	.addrsig_sym vec_push