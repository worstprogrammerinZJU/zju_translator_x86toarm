	.text
	.globl	yyset_in                        // -- Begin function yyset_in
	.p2align	2
	.type	yyset_in,@function
yyset_in:                               // @yyset_in
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	adrp	x9, yyin
	str	x8, [x9, :lo12:yyin]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyset_in, .Lfunc_end0-yyset_in
                                        // -- End function
	.type	yyin,@object                    // @yyin
	.bss
	.globl	yyin
	.p2align	3
yyin:
	.xword	0
	.size	yyin, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyin