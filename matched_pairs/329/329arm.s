	.text
	.globl	conndeadlinesoon                // -- Begin function conndeadlinesoon
	.p2align	2
	.type	conndeadlinesoon,@function
conndeadlinesoon:                       // @conndeadlinesoon
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	nanoseconds
	str	x0, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	connsoonestjob
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	w9, #0
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	adrp	x10, SAFETY_MARGIN
	ldr	x10, [x10, :lo12:SAFETY_MARGIN]
	subs	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, ge
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	conndeadlinesoon, .Lfunc_end0-conndeadlinesoon
                                        // -- End function
	.type	SAFETY_MARGIN,@object           // @SAFETY_MARGIN
	.bss
	.globl	SAFETY_MARGIN
	.p2align	3
SAFETY_MARGIN:
	.xword	0                               // 0x0
	.size	SAFETY_MARGIN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nanoseconds
	.addrsig_sym connsoonestjob
	.addrsig_sym SAFETY_MARGIN