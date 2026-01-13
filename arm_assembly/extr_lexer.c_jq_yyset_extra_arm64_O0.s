	.text
	.globl	yyset_extra                     // -- Begin function yyset_extra
	.p2align	2
	.type	yyset_extra,@function
yyset_extra:                            // @yyset_extra
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	w8, [sp, #28]
	adrp	x9, yyextra
	str	w8, [x9, :lo12:yyextra]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyset_extra, .Lfunc_end0-yyset_extra
                                        // -- End function
	.type	yyextra,@object                 // @yyextra
	.bss
	.globl	yyextra
	.p2align	2
yyextra:
	.word	0                               // 0x0
	.size	yyextra, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyextra