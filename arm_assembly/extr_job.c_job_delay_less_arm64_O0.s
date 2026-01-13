	.text
	.globl	job_delay_less                  // -- Begin function job_delay_less
	.p2align	2
	.type	job_delay_less,@function
job_delay_less:                         // @job_delay_less
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #44]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp, #44]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, lt
	and	w8, w8, #0x1
	str	w8, [sp, #44]
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #44]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	job_delay_less, .Lfunc_end0-job_delay_less
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig