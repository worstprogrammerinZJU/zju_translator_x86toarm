	.text
	.p2align	2                               // -- Begin function touch_job
	.type	touch_job,@function
touch_job:                              // @touch_job
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	is_job_reserved_by_conn
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	nanoseconds
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	add	x8, x0, x8
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	touch_job, .Lfunc_end0-touch_job
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym touch_job
	.addrsig_sym is_job_reserved_by_conn
	.addrsig_sym nanoseconds