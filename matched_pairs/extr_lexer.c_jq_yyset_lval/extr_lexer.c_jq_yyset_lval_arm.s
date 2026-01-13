	.text
	.globl	yyset_lval                      // -- Begin function yyset_lval
	.p2align	2
	.type	yyset_lval,@function
yyset_lval:                             // @yyset_lval
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	adrp	x9, yylval
	str	x8, [x9, :lo12:yylval]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyset_lval, .Lfunc_end0-yyset_lval
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