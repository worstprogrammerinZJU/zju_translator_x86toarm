	.text
	.globl	yyerror                         // -- Begin function yyerror
	.p2align	2
	.type	yyerror,@function
yyerror:                                // @yyerror
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	str	x5, [sp]
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldr	x0, [sp]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strstr
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	ldr	x3, [sp]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	locfile_locate
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	ldr	x3, [sp]
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	locfile_locate
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	yyerror, .Lfunc_end0-yyerror
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"jq: error: %s (Unix shell quoting issues?)"
	.size	.L.str.1, 43
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"jq: error: %s"
	.size	.L.str.2, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strstr
	.addrsig_sym locfile_locate