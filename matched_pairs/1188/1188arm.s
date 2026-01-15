	.text
	.globl	job_find                        // -- Begin function job_find
	.p2align	2
	.type	job_find,@function
job_find:                               // @job_find
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	_get_job_hash_index
	stur	w0, [x29, #-12]
	adrp	x8, all_jobs
	ldr	x8, [x8, :lo12:all_jobs]
	ldursw	x9, [x29, #-12]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	mov	w9, #0
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
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
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	job_find, .Lfunc_end0-job_find
                                        // -- End function
	.type	all_jobs,@object                // @all_jobs
	.bss
	.globl	all_jobs
	.p2align	3
all_jobs:
	.xword	0
	.size	all_jobs, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _get_job_hash_index
	.addrsig_sym all_jobs