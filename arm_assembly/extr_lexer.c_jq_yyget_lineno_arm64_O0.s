	.text
	.globl	yyget_lineno                    // -- Begin function yyget_lineno
	.p2align	2
	.type	yyget_lineno,@function
yyget_lineno:                           // @yyget_lineno
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	adrp	x8, YY_CURRENT_BUFFER
	ldr	w8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #28]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, yylineno
	ldr	w8, [x8, :lo12:yylineno]
	str	w8, [sp, #28]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyget_lineno, .Lfunc_end0-yyget_lineno
                                        // -- End function
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.word	0                               // 0x0
	.size	YY_CURRENT_BUFFER, 4
	.type	yylineno,@object                // @yylineno
	.globl	yylineno
	.p2align	2
yylineno:
	.word	0                               // 0x0
	.size	yylineno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yylineno