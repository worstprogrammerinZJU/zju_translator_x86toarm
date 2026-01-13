	.text
	.globl	make_pair                       // -- Begin function make_pair
	.p2align	2
	.type	make_pair,@function
make_pair:                              // @make_pair
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	mov	w0, #16
	bl	malloc
	str	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_pair, .Lfunc_end0-make_pair
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc