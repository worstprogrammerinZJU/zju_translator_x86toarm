	.text
	.p2align	2                               // -- Begin function remove_reserved_job
	.type	remove_reserved_job,@function
remove_reserved_job:                    // @remove_reserved_job
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	is_job_reserved_by_conn
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	remove_this_reserved_job
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	remove_reserved_job, .Lfunc_end0-remove_reserved_job
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_reserved_job
	.addrsig_sym is_job_reserved_by_conn
	.addrsig_sym remove_this_reserved_job