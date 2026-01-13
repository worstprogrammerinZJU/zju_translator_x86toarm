	.text
	.globl	job_list_is_empty               // -- Begin function job_list_is_empty
	.p2align	2
	.type	job_list_is_empty,@function
job_list_is_empty:                      // @job_list_is_empty
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #8]
	ldr	x10, [sp, #8]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	job_list_is_empty, .Lfunc_end0-job_list_is_empty
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig