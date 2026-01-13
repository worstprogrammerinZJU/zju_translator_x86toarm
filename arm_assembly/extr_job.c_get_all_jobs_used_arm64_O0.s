	.text
	.globl	get_all_jobs_used               // -- Begin function get_all_jobs_used
	.p2align	2
	.type	get_all_jobs_used,@function
get_all_jobs_used:                      // @get_all_jobs_used
// %bb.0:
	adrp	x8, all_jobs_used
	ldr	x0, [x8, :lo12:all_jobs_used]
	ret
.Lfunc_end0:
	.size	get_all_jobs_used, .Lfunc_end0-get_all_jobs_used
                                        // -- End function
	.type	all_jobs_used,@object           // @all_jobs_used
	.bss
	.globl	all_jobs_used
	.p2align	3
all_jobs_used:
	.xword	0                               // 0x0
	.size	all_jobs_used, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym all_jobs_used