	.text
	.globl	job_list_remove                 // -- Begin function job_list_remove
	.p2align	2
	.type	job_list_remove,@function
job_list_remove:                        // @job_list_remove
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp]
	bl	job_list_is_empty
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	str	x8, [x9]
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x9, [sp]
	ldr	x9, [x9, #8]
	str	x8, [x9]
	ldr	x0, [sp]
	bl	job_list_reset
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	job_list_remove, .Lfunc_end0-job_list_remove
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym job_list_is_empty
	.addrsig_sym job_list_reset