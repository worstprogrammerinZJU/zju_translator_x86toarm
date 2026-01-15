	.text
	.globl	decFloatIsNormal                // -- Begin function decFloatIsNormal
	.p2align	2
	.type	decFloatIsNormal,@function
decFloatIsNormal:                       // @decFloatIsNormal
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	DFISSPECIAL
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	DFISZERO
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	GETEXPUN
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	decFloatDigits
	mov	x8, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	add	x8, x0, x8
	subs	x8, x8, #1
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, DECEMIN
	ldr	x9, [x9, :lo12:DECEMIN]
	subs	x8, x8, x9
	cset	w8, ge
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatIsNormal, .Lfunc_end0-decFloatIsNormal
                                        // -- End function
	.type	DECEMIN,@object                 // @DECEMIN
	.bss
	.globl	DECEMIN
	.p2align	3
DECEMIN:
	.xword	0                               // 0x0
	.size	DECEMIN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym DFISZERO
	.addrsig_sym GETEXPUN
	.addrsig_sym decFloatDigits
	.addrsig_sym DECEMIN