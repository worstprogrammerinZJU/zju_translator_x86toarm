	.text
	.p2align	2                               // -- Begin function _get_job_hash_index
	.type	_get_job_hash_index,@function
_get_job_hash_index:                    // @_get_job_hash_index
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adrp	x9, all_jobs_cap
	ldr	w10, [x9, :lo12:all_jobs_cap]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w0, w8, w9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	_get_job_hash_index, .Lfunc_end0-_get_job_hash_index
                                        // -- End function
	.type	all_jobs_cap,@object            // @all_jobs_cap
	.bss
	.globl	all_jobs_cap
	.p2align	2
all_jobs_cap:
	.word	0                               // 0x0
	.size	all_jobs_cap, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _get_job_hash_index
	.addrsig_sym all_jobs_cap