	.text
	.p2align	2                               // -- Begin function job_hash_free
	.type	job_hash_free,@function
job_hash_free:                          // @job_hash_free
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, all_jobs
	ldr	x8, [x8, :lo12:all_jobs]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	_get_job_hash_index
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, x0, lsl #3
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	mov	w9, #0
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_5:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	adrp	x9, all_jobs_used
	ldr	w8, [x9, :lo12:all_jobs_used]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:all_jobs_used]
	b	.LBB0_7
.LBB0_7:
	adrp	x8, all_jobs_used
	ldr	w8, [x8, :lo12:all_jobs_used]
	adrp	x9, all_jobs_cap
	ldr	w9, [x9, :lo12:all_jobs_cap]
	subs	w8, w8, w9, asr #4
	b.ge	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	w0, wzr
	bl	rehash
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	job_hash_free, .Lfunc_end0-job_hash_free
                                        // -- End function
	.type	all_jobs,@object                // @all_jobs
	.bss
	.globl	all_jobs
	.p2align	3
all_jobs:
	.xword	0
	.size	all_jobs, 8
	.type	all_jobs_used,@object           // @all_jobs_used
	.globl	all_jobs_used
	.p2align	2
all_jobs_used:
	.word	0                               // 0x0
	.size	all_jobs_used, 4
	.type	all_jobs_cap,@object            // @all_jobs_cap
	.globl	all_jobs_cap
	.p2align	2
all_jobs_cap:
	.word	0                               // 0x0
	.size	all_jobs_cap, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym job_hash_free
	.addrsig_sym _get_job_hash_index
	.addrsig_sym rehash
	.addrsig_sym all_jobs
	.addrsig_sym all_jobs_used
	.addrsig_sym all_jobs_cap