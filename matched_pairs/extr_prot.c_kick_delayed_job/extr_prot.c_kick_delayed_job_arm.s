	.text
	.p2align	2                               // -- Begin function kick_delayed_job
	.type	kick_delayed_job,@function
kick_delayed_job:                       // @kick_delayed_job
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	walresvupdate
	str	w0, [sp]
	ldr	w8, [sp]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #12]
	bl	heapremove
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #8]
	mov	w3, #1
	add	w8, w8, #1
	str	w8, [x9, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	w2, wzr
	bl	enqueue_job
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #4]
	mov	w3, wzr
	bl	enqueue_job
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	w2, wzr
	bl	bury_job
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	kick_delayed_job, .Lfunc_end0-kick_delayed_job
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kick_delayed_job
	.addrsig_sym walresvupdate
	.addrsig_sym heapremove
	.addrsig_sym enqueue_job
	.addrsig_sym bury_job