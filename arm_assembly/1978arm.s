	.text
	.globl	parse_batchnorm                 // -- Begin function parse_batchnorm
	.p2align	2
	.type	parse_batchnorm,@function
parse_batchnorm:                        // @parse_batchnorm
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	w0, [sp, #28]
	ldr	w1, [sp, #24]
	ldr	w2, [sp, #20]
	ldr	w3, [sp, #16]
	bl	make_batchnorm_layer
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_batchnorm, .Lfunc_end0-parse_batchnorm
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_batchnorm_layer