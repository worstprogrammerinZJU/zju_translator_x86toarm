	.text
	.globl	job_list_insert                 // -- Begin function job_list_insert
	.p2align	2
	.type	job_list_insert,@function
job_list_insert:                        // @job_list_insert
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	job_list_is_empty
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	job_list_insert, .Lfunc_end0-job_list_insert
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym job_list_is_empty