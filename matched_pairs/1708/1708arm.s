	.text
	.p2align	2                               // -- Begin function ms_delete
	.type	ms_delete,@function
ms_delete:                              // @ms_delete
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.lo	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x10, [sp, #16]
	ldr	x9, [x10]
	subs	x9, x9, #1
	str	x9, [x10]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #16]
	ldr	x10, [sp, #8]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	ldr	x2, [sp, #8]
	blr	x8
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ms_delete, .Lfunc_end0-ms_delete
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ms_delete