	.text
	.p2align	2                               // -- Begin function eval_struct_ref
	.type	eval_struct_ref,@function
eval_struct_ref:                        // @eval_struct_ref
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, AST_STRUCT_REF
	ldr	x9, [x9, :lo12:AST_STRUCT_REF]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	add	w1, w8, w9
	bl	eval_struct_ref
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	mov	x1, xzr
	bl	eval_intexpr
	ldr	w8, [sp, #12]
	add	w8, w0, w8
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	eval_struct_ref, .Lfunc_end0-eval_struct_ref
                                        // -- End function
	.type	AST_STRUCT_REF,@object          // @AST_STRUCT_REF
	.bss
	.globl	AST_STRUCT_REF
	.p2align	3
AST_STRUCT_REF:
	.xword	0                               // 0x0
	.size	AST_STRUCT_REF, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym eval_struct_ref
	.addrsig_sym eval_intexpr
	.addrsig_sym AST_STRUCT_REF