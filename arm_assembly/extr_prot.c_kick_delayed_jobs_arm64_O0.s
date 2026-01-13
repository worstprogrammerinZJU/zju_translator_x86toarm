	.text
	.p2align	2                               // -- Begin function kick_delayed_jobs
	.type	kick_delayed_jobs,@function
kick_delayed_jobs:                      // @kick_delayed_jobs
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	xzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]
	ldr	x10, [sp, #24]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, gt
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x1, [x8]
	bl	kick_delayed_job
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	kick_delayed_jobs, .Lfunc_end0-kick_delayed_jobs
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kick_delayed_jobs
	.addrsig_sym kick_delayed_job