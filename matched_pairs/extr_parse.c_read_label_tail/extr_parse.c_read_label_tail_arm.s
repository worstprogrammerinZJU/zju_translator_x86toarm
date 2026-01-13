	.text
	.p2align	2                               // -- Begin function read_label_tail
	.type	read_label_tail,@function
read_label_tail:                        // @read_label_tail
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	read_stmt
	str	x0, [sp, #16]
	bl	make_vector
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	bl	vec_push
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	vec_push
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	ast_compound_stmt
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_label_tail, .Lfunc_end0-read_label_tail
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_label_tail
	.addrsig_sym read_stmt
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_compound_stmt