	.text
	.globl	make_list                       // -- Begin function make_list
	.p2align	2
	.type	make_list,@function
make_list:                              // @make_list
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #24
	bl	malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_list, .Lfunc_end0-make_list
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc