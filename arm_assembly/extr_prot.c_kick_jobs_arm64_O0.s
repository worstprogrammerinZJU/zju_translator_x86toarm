	.text
	.p2align	2                               // -- Begin function kick_jobs
	.type	kick_jobs,@function
kick_jobs:                              // @kick_jobs
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	w2, [sp, #4]
	ldr	x0, [sp, #8]
	bl	buried_job_p
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	w2, [sp, #4]
	bl	kick_buried_jobs
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	w2, [sp, #4]
	bl	kick_delayed_jobs
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	kick_jobs, .Lfunc_end0-kick_jobs
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kick_jobs
	.addrsig_sym buried_job_p
	.addrsig_sym kick_buried_jobs
	.addrsig_sym kick_delayed_jobs