	.text
	.globl	decNumberFromInt32              // -- Begin function decNumberFromInt32
	.p2align	2
	.type	decNumberFromInt32,@function
decNumberFromInt32:                     // @decNumberFromInt32
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	str	w8, [sp]
	b	.LBB0_6
.LBB0_2:
	ldr	w8, [sp, #4]
	adrp	x9, BADINT
	ldr	w9, [x9, :lo12:BADINT]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #-2147483648
	str	w8, [sp]
	b	.LBB0_5
.LBB0_4:
	ldr	w9, [sp, #4]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #8]
	ldr	w1, [sp]
	bl	decNumberFromUInt32
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, DECNEG
	ldr	w8, [x8, :lo12:DECNEG]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decNumberFromInt32, .Lfunc_end0-decNumberFromInt32
                                        // -- End function
	.type	BADINT,@object                  // @BADINT
	.bss
	.globl	BADINT
	.p2align	2
BADINT:
	.word	0                               // 0x0
	.size	BADINT, 4
	.type	DECNEG,@object                  // @DECNEG
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberFromUInt32
	.addrsig_sym BADINT
	.addrsig_sym DECNEG