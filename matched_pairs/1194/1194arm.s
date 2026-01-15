	.text
	.globl	job_list_reset                  // -- Begin function job_list_reset
	.p2align	2
	.type	job_list_reset,@function
job_list_reset:                         // @job_list_reset
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	job_list_reset, .Lfunc_end0-job_list_reset
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig