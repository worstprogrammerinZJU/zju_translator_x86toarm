	.text
	.globl	decFloatIsSubnormal             // -- Begin function decFloatIsSubnormal
	.p2align	2
	.type	decFloatIsSubnormal,@function
decFloatIsSubnormal:                    // @decFloatIsSubnormal
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	DFISSPECIAL
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	x0, [sp]
	bl	decFloatIsNormal
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	x0, [sp]
	bl	DFISZERO
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsSubnormal, .Lfunc_end0-decFloatIsSubnormal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym decFloatIsNormal
	.addrsig_sym DFISZERO