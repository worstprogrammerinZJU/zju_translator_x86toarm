	.text
	.globl	decFloatIsNegative              // -- Begin function decFloatIsNegative
	.p2align	2
	.type	decFloatIsNegative,@function
decFloatIsNegative:                     // @decFloatIsNegative
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	DFISSIGNED
	mov	w8, #0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	DFISZERO
	mov	w8, #0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	DFISNAN
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsNegative, .Lfunc_end0-decFloatIsNegative
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSIGNED
	.addrsig_sym DFISZERO
	.addrsig_sym DFISNAN