	.text
	.globl	cttest_opt_none                 // -- Begin function cttest_opt_none
	.p2align	2
	.type	cttest_opt_none,@function
cttest_opt_none:                        // @cttest_opt_none
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	sub	x1, x29, #8
	stur	xzr, [x29, #-8]
	bl	optparse
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #48]
	adrp	x8, Portdef
	ldr	w1, [x8, :lo12:Portdef]
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #40]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, job_data_size_limit
	ldr	x8, [x8, :lo12:job_data_size_limit]
	adrp	x9, JOB_DATA_SIZE_LIMIT_DEFAULT
	ldr	x9, [x9, :lo12:JOB_DATA_SIZE_LIMIT_DEFAULT]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:srv]
	adrp	x9, Filesizedef
	ldr	x9, [x9, :lo12:Filesizedef]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_opt_none, .Lfunc_end0-cttest_opt_none
                                        // -- End function
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	56
	.size	srv, 56
	.type	Portdef,@object                 // @Portdef
	.globl	Portdef
	.p2align	2
Portdef:
	.word	0                               // 0x0
	.size	Portdef, 4
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.globl	job_data_size_limit
	.p2align	3
job_data_size_limit:
	.xword	0                               // 0x0
	.size	job_data_size_limit, 8
	.type	JOB_DATA_SIZE_LIMIT_DEFAULT,@object // @JOB_DATA_SIZE_LIMIT_DEFAULT
	.globl	JOB_DATA_SIZE_LIMIT_DEFAULT
	.p2align	3
JOB_DATA_SIZE_LIMIT_DEFAULT:
	.xword	0                               // 0x0
	.size	JOB_DATA_SIZE_LIMIT_DEFAULT, 8
	.type	Filesizedef,@object             // @Filesizedef
	.globl	Filesizedef
	.p2align	3
Filesizedef:
	.xword	0                               // 0x0
	.size	Filesizedef, 8
	.type	verbose,@object                 // @verbose
	.globl	verbose
	.p2align	3
verbose:
	.xword	0                               // 0x0
	.size	verbose, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv
	.addrsig_sym Portdef
	.addrsig_sym job_data_size_limit
	.addrsig_sym JOB_DATA_SIZE_LIMIT_DEFAULT
	.addrsig_sym Filesizedef
	.addrsig_sym verbose