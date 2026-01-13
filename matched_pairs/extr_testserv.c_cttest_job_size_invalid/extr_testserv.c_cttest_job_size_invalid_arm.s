	.text
	.globl	cttest_job_size_invalid         // -- Begin function cttest_job_size_invalid
	.p2align	2
	.type	cttest_job_size_invalid,@function
cttest_job_size_invalid:                // @cttest_job_size_invalid
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, JOB_DATA_SIZE_LIMIT_MAX
	ldr	w8, [x8, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	adrp	x9, job_data_size_limit
	str	w8, [x9, :lo12:job_data_size_limit]
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	ckresp
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	ckresp
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_job_size_invalid, .Lfunc_end0-cttest_job_size_invalid
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
	.asciz	"put 0 0 0 4294967296\r\n"
	.size	.L.str, 23
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"put 0 0 0 10b\r\n"
	.size	.L.str.1, 16
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"put 0 0 0 --!@#$%^&&**()0b\r\n"
	.size	.L.str.2, 29
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"put 0 0 0 1\r\n"
	.size	.L.str.3, 14
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"x\r\n"
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"BAD_FORMAT\r\n"
	.size	.L.str.5, 13
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.6, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym job_data_size_limit