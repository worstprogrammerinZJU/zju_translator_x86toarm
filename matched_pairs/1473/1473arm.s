	.text
	.globl	yyset_debug                     // -- Begin function yyset_debug
	.p2align	2
	.type	yyset_debug,@function
yyset_debug:                            // @yyset_debug
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	w8, [sp, #28]
	adrp	x9, yy_flex_debug
	str	w8, [x9, :lo12:yy_flex_debug]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyset_debug, .Lfunc_end0-yyset_debug
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