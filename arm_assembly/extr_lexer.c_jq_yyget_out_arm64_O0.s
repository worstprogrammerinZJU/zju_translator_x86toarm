	.text
	.globl	yyget_out                       // -- Begin function yyget_out
	.p2align	2
	.type	yyget_out,@function
yyget_out:                              // @yyget_out
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, yyout
	ldr	x0, [x8, :lo12:yyout]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yyget_out, .Lfunc_end0-yyget_out
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