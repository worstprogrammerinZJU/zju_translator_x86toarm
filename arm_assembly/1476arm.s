	.text
	.globl	yyset_lineno                    // -- Begin function yyset_lineno
	.p2align	2
	.type	yyset_lineno,@function
yyset_lineno:                           // @yyset_lineno
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	adrp	x8, YY_CURRENT_BUFFER
	ldr	w8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-4]
	adrp	x9, yylineno
	str	w8, [x9, :lo12:yylineno]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yyset_lineno, .Lfunc_end0-yyset_lineno
                                        // -- End function
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.word	0                               // 0x0
	.size	YY_CURRENT_BUFFER, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"yyset_lineno called with no buffer"
	.size	.L.str, 35
	.type	yylineno,@object                // @yylineno
	.bss
	.globl	yylineno
	.p2align	2
yylineno:
	.word	0                               // 0x0
	.size	yylineno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yylineno