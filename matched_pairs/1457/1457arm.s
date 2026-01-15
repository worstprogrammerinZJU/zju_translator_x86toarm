	.text
	.globl	yyget_column                    // -- Begin function yyget_column
	.p2align	2
	.type	yyget_column,@function
yyget_column:                           // @yyget_column
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
	adrp	x8, yycolumn
	ldr	w8, [x8, :lo12:yycolumn]
	str	w8, [sp, #28]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yyget_column, .Lfunc_end0-yyget_column
                                        // -- End function
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.word	0                               // 0x0
	.size	YY_CURRENT_BUFFER, 4
	.type	yycolumn,@object                // @yycolumn
	.globl	yycolumn
	.p2align	2
yycolumn:
	.word	0                               // 0x0
	.size	yycolumn, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yycolumn