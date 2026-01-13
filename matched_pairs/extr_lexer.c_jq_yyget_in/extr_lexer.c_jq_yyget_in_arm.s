	.text
	.globl	yyget_in                        // -- Begin function yyget_in
	.p2align	2
	.type	yyget_in,@function
yyget_in:                               // @yyget_in
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, yyin
	ldr	x0, [x8, :lo12:yyin]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yyget_in, .Lfunc_end0-yyget_in
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