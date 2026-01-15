	.text
	.globl	job_setpos                      // -- Begin function job_setpos
	.p2align	2
	.type	job_setpos,@function
job_setpos:                             // @job_setpos
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	job_setpos, .Lfunc_end0-job_setpos
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig