	.text
	.p2align	2                               // -- Begin function store_job
	.type	store_job,@function
store_job:                              // @store_job
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	_get_job_hash_index
	str	w0, [sp, #4]
	adrp	x9, all_jobs
	ldr	x8, [x9, :lo12:all_jobs]
	ldrsw	x10, [sp, #4]
	ldr	x8, [x8, x10, lsl #3]
	ldr	x10, [sp, #8]
	str	x8, [x10]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, :lo12:all_jobs]
	ldrsw	x10, [sp, #4]
	str	x8, [x9, x10, lsl #3]
	adrp	x8, all_jobs_used
	ldr	w9, [x8, :lo12:all_jobs_used]
	add	w9, w9, #1
	str	w9, [x8, :lo12:all_jobs_used]
	ldr	w8, [x8, :lo12:all_jobs_used]
	adrp	x9, all_jobs_cap
	ldr	w9, [x9, :lo12:all_jobs_cap]
	subs	w8, w8, w9, lsl #2
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w0, #1
	bl	rehash
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	store_job, .Lfunc_end0-store_job
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
	.addrsig_sym store_job
	.addrsig_sym _get_job_hash_index
	.addrsig_sym rehash
	.addrsig_sym all_jobs
	.addrsig_sym all_jobs_used
	.addrsig_sym all_jobs_cap