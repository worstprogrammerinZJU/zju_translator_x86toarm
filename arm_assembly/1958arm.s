	.text
	.p2align	2                               // -- Begin function wrap
	.type	wrap,@function
wrap:                                   // @wrap
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	same_arith_type
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, AST_CONV
	ldr	w0, [x8, :lo12:AST_CONV]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	wrap, .Lfunc_end0-wrap
                                        // -- End function
	.type	AST_CONV,@object                // @AST_CONV
	.bss
	.globl	AST_CONV
	.p2align	2
AST_CONV:
	.word	0                               // 0x0
	.size	AST_CONV, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym wrap
	.addrsig_sym same_arith_type
	.addrsig_sym ast_uop
	.addrsig_sym AST_CONV