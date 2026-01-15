	.text
	.globl	yyget_leng                      // -- Begin function yyget_leng
	.p2align	2
	.type	yyget_leng,@function
yyget_leng:                             // @yyget_leng
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, yyleng
	ldr	w0, [x8, :lo12:yyleng]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yyget_leng, .Lfunc_end0-yyget_leng
                                        // -- End function
	.type	yyleng,@object                  // @yyleng
	.bss
	.globl	yyleng
	.p2align	2
yyleng:
	.word	0                               // 0x0
	.size	yyleng, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyleng