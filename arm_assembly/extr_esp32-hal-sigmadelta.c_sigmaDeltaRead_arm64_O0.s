	.text
	.globl	sigmaDeltaRead                  // -- Begin function sigmaDeltaRead
	.p2align	2
	.type	sigmaDeltaRead,@function
sigmaDeltaRead:                         // @sigmaDeltaRead
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #7
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	bl	SD_MUTEX_LOCK
	adrp	x8, SIGMADELTA
	ldr	x8, [x8, :lo12:SIGMADELTA]
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	add	w8, w8, #128
	str	w8, [sp, #4]
	bl	SD_MUTEX_UNLOCK
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sigmaDeltaRead, .Lfunc_end0-sigmaDeltaRead
                                        // -- End function
	.type	SIGMADELTA,@object              // @SIGMADELTA
	.bss
	.globl	SIGMADELTA
	.p2align	3
SIGMADELTA:
	.zero	8
	.size	SIGMADELTA, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SD_MUTEX_LOCK
	.addrsig_sym SD_MUTEX_UNLOCK
	.addrsig_sym SIGMADELTA