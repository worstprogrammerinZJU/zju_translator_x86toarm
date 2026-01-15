	.text
	.globl	ms_append                       // -- Begin function ms_append
	.p2align	2
	.type	ms_append,@function
ms_append:                              // @ms_append
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.lt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	grow
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_6
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #24]
	ldr	x12, [sp, #16]
	ldr	x10, [x12]
	add	x11, x10, #1
	str	x11, [x12]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x2, x9, #1
	blr	x8
	b	.LBB0_5
.LBB0_5:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ms_append, .Lfunc_end0-ms_append
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym grow