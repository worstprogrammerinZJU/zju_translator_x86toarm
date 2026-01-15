	.text
	.globl	make_dict                       // -- Begin function make_dict
	.p2align	2
	.type	make_dict,@function
make_dict:                              // @make_dict
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #8
	bl	malloc
	str	x0, [sp, #8]
	bl	make_map
	ldr	x8, [sp, #8]
	str	w0, [x8, #4]
	bl	make_vector
	ldr	x8, [sp, #8]
	str	w0, [x8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_dict, .Lfunc_end0-make_dict
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym make_map
	.addrsig_sym make_vector