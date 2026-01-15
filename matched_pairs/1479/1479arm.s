	.text
	.globl	yyset_out                       // -- Begin function yyset_out
	.p2align	2
	.type	yyset_out,@function
yyset_out:                              // @yyset_out
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	adrp	x9, yyout
	str	x8, [x9, :lo12:yyout]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyset_out, .Lfunc_end0-yyset_out
                                        // -- End function
	.type	yyout,@object                   // @yyout
	.bss
	.globl	yyout
	.p2align	3
yyout:
	.xword	0
	.size	yyout, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyout