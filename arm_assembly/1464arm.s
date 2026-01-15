	.text
	.globl	yyget_text                      // -- Begin function yyget_text
	.p2align	2
	.type	yyget_text,@function
yyget_text:                             // @yyget_text
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, yytext
	ldr	x0, [x8, :lo12:yytext]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yyget_text, .Lfunc_end0-yyget_text
                                        // -- End function
	.type	yytext,@object                  // @yytext
	.bss
	.globl	yytext
	.p2align	3
yytext:
	.xword	0
	.size	yytext, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yytext