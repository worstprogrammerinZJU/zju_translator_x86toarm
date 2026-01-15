	.text
	.globl	yyget_debug                     // -- Begin function yyget_debug
	.p2align	2
	.type	yyget_debug,@function
yyget_debug:                            // @yyget_debug
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, yy_flex_debug
	ldr	w0, [x8, :lo12:yy_flex_debug]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yyget_debug, .Lfunc_end0-yyget_debug
                                        // -- End function
	.type	yy_flex_debug,@object           // @yy_flex_debug
	.bss
	.globl	yy_flex_debug
	.p2align	2
yy_flex_debug:
	.word	0                               // 0x0
	.size	yy_flex_debug, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_flex_debug