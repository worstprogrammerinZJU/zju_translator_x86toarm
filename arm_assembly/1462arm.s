	.text
	.globl	yyget_lval                      // -- Begin function yyget_lval
	.p2align	2
	.type	yyget_lval,@function
yyget_lval:                             // @yyget_lval
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, yylval
	ldr	x0, [x8, :lo12:yylval]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yyget_lval, .Lfunc_end0-yyget_lval
                                        // -- End function
	.type	yylval,@object                  // @yylval
	.bss
	.globl	yylval
	.p2align	3
yylval:
	.xword	0
	.size	yylval, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yylval