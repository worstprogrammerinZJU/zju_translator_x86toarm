	.text
	.globl	sigmaDeltaWrite                 // -- Begin function sigmaDeltaWrite
	.p2align	2
	.type	sigmaDeltaWrite,@function
sigmaDeltaWrite:                        // @sigmaDeltaWrite
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #7
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #8]
	subs	w8, w8, #128
	str	w8, [sp, #8]
	bl	SD_MUTEX_LOCK
	ldr	w8, [sp, #8]
	adrp	x9, SIGMADELTA
	ldr	x9, [x9, :lo12:SIGMADELTA]
	ldursw	x10, [x29, #-4]
	str	w8, [x9, x10, lsl #2]
	bl	SD_MUTEX_UNLOCK
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sigmaDeltaWrite, .Lfunc_end0-sigmaDeltaWrite
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