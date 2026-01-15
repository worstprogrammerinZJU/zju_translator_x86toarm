	.text
	.p2align	2                               // -- Begin function decCheckMath
	.type	decCheckMath,@function
decCheckMath:                           // @decCheckMath
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	adrp	x9, DEC_MAX_MATH
	ldr	w9, [x9, :lo12:DEC_MAX_MATH]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	adrp	x9, DEC_MAX_MATH
	ldr	w9, [x9, :lo12:DEC_MAX_MATH]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #8]
	mov	w8, wzr
	subs	w8, w8, w9
	adrp	x9, DEC_MAX_MATH
	ldr	w9, [x9, :lo12:DEC_MAX_MATH]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, DEC_Invalid_context
	ldr	w10, [x8, :lo12:DEC_Invalid_context]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_10
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	adrp	x9, DEC_MAX_MATH
	ldr	w9, [x9, :lo12:DEC_MAX_MATH]
	subs	w8, w8, w9
	b.gt	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	add	w8, w8, w9
	adrp	x9, DEC_MAX_MATH
	ldr	w9, [x9, :lo12:DEC_MAX_MATH]
	add	w9, w9, #1
	subs	w8, w8, w9
	b.gt	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	add	w8, w8, w9
	adrp	x9, DEC_MAX_MATH
	ldr	w10, [x9, :lo12:DEC_MAX_MATH]
	mov	w9, #1
	subs	w10, w9, w10
	mov	w9, #2
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	bl	ISZERO
	cbnz	w0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, DEC_Invalid_operation
	ldr	w10, [x8, :lo12:DEC_Invalid_operation]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decCheckMath, .Lfunc_end0-decCheckMath
                                        // -- End function
	.type	DEC_MAX_MATH,@object            // @DEC_MAX_MATH
	.bss
	.globl	DEC_MAX_MATH
	.p2align	2
DEC_MAX_MATH:
	.word	0                               // 0x0
	.size	DEC_MAX_MATH, 4
	.type	DEC_Invalid_context,@object     // @DEC_Invalid_context
	.globl	DEC_Invalid_context
	.p2align	2
DEC_Invalid_context:
	.word	0                               // 0x0
	.size	DEC_Invalid_context, 4
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCheckMath
	.addrsig_sym ISZERO
	.addrsig_sym DEC_MAX_MATH
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DEC_Invalid_operation