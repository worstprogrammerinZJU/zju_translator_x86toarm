	.text
	.globl	yyrealloc                       // -- Begin function yyrealloc
	.p2align	2
	.type	yyrealloc,@function
yyrealloc:                              // @yyrealloc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	jv_mem_realloc
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yyrealloc, .Lfunc_end0-yyrealloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_realloc