	.text
	.globl	yyset_lloc                      // -- Begin function yyset_lloc
	.p2align	2
	.type	yyset_lloc,@function
yyset_lloc:                             // @yyset_lloc
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	adrp	x9, yylloc
	str	x8, [x9, :lo12:yylloc]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyset_lloc, .Lfunc_end0-yyset_lloc
                                        // -- End function
	.type	yylloc,@object                  // @yylloc
	.bss
	.globl	yylloc
	.p2align	3
yylloc:
	.xword	0
	.size	yylloc, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yylloc