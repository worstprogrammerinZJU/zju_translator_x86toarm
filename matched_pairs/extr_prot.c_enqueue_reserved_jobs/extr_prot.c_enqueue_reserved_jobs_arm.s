	.text
	.globl	enqueue_reserved_jobs           // -- Begin function enqueue_reserved_jobs
	.p2align	2
	.type	enqueue_reserved_jobs,@function
enqueue_reserved_jobs:                  // @enqueue_reserved_jobs
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	add	x0, x8, #12
	bl	job_list_is_empty
	cbnz	w0, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	job_list_remove
	str	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	ldr	x1, [sp, #16]
	mov	w3, wzr
	mov	w2, w3
	bl	enqueue_job
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	ldr	x1, [sp, #16]
	mov	w2, wzr
	bl	bury_job
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_1
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	enqueue_reserved_jobs, .Lfunc_end0-enqueue_reserved_jobs
                                        // -- End function
	.type	global_stat,@object             // @global_stat
	.bss
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.size	global_stat, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym job_list_is_empty
	.addrsig_sym job_list_remove
	.addrsig_sym enqueue_job
	.addrsig_sym bury_job
	.addrsig_sym global_stat