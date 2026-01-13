	.text
	.globl	cttest_job_size_max_plus_1      // -- Begin function cttest_job_size_max_plus_1
	.p2align	2
	.type	cttest_job_size_max_plus_1,@function
cttest_job_size_max_plus_1:             // @cttest_job_size_max_plus_1
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #256, lsl #12           // =1048576
	sub	sp, sp, #48
	sub	x8, x29, #28
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, JOB_DATA_SIZE_LIMIT_MAX
	ldr	w8, [x8, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	adrp	x9, job_data_size_limit
	str	w8, [x9, :lo12:job_data_size_limit]
	bl	SERVER
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x8, #24]
	ldr	w0, [x8, #24]
	bl	mustdiallocal
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x8, #20]
	ldr	w0, [x8, #20]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, #1048576
	str	w2, [x9, #16]
	mov	x8, sp
	stur	x8, [x9, #4]
	add	x0, sp, #19
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	w1, #97
	bl	memset
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x9, x9, #256, lsl #12           // =1048576
	strb	wzr, [x9]
	str	wzr, [x8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8]
	adrp	x9, JOB_DATA_SIZE_LIMIT_MAX
	ldr	w9, [x9, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #20]
	add	x1, sp, #19
	bl	mustsend
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9]
	add	w8, w8, #256, lsl #12           // =1048576
	str	w8, [x9]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #20]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	mustsend
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #20]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #20]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	ckresp
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x8, #4]
	mov	sp, x8
	add	sp, sp, #256, lsl #12           // =1048576
	add	sp, sp, #48
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	cttest_job_size_max_plus_1, .Lfunc_end0-cttest_job_size_max_plus_1
                                        // -- End function
	.type	JOB_DATA_SIZE_LIMIT_MAX,@object // @JOB_DATA_SIZE_LIMIT_MAX
	.bss
	.globl	JOB_DATA_SIZE_LIMIT_MAX
	.p2align	2
JOB_DATA_SIZE_LIMIT_MAX:
	.word	0                               // 0x0
	.size	JOB_DATA_SIZE_LIMIT_MAX, 4
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.word	0                               // 0x0
	.size	job_data_size_limit, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 0 1073741825\r\n"
	.size	.L.str, 23
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"x"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\r\n"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"JOB_TOO_BIG\r\n"
	.size	.L.str.3, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym memset
	.addrsig_sym ckresp
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym job_data_size_limit