	.text
	.globl	ms_take                         // -- Begin function ms_take
	.p2align	2
	.type	ms_take,@function
ms_take:                                // @ms_take
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	ldr	w10, [x9]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldrsw	x9, [x9, #4]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldrsw	x1, [x8, #4]
	bl	ms_delete
	ldr	x9, [sp, #16]
	ldr	w8, [x9, #4]
	add	w8, w8, #1
	str	w8, [x9, #4]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ms_take, .Lfunc_end0-ms_take
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ms_delete