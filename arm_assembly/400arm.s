	.text
	.p2align	2                               // -- Begin function glue_push
	.type	glue_push,@function
glue_push:                              // @glue_push
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	vec_pop
	str	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	glue_tokens
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	vec_push
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	glue_push, .Lfunc_end0-glue_push
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym glue_push
	.addrsig_sym vec_pop
	.addrsig_sym vec_push
	.addrsig_sym glue_tokens