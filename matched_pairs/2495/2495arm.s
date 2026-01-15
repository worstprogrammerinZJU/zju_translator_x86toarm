	.text
	.globl	cttest_optz_more_than_max       // -- Begin function cttest_optz_more_than_max
	.p2align	2
	.type	cttest_optz_more_than_max,@function
cttest_optz_more_than_max:              // @cttest_optz_more_than_max
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.cttest_optz_more_than_max.args
	add	x8, x8, :lo12:.L__const.cttest_optz_more_than_max.args
	ldr	q0, [x8]
	mov	x1, sp
	str	q0, [sp]
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	bl	optparse
	adrp	x8, job_data_size_limit
	ldr	w8, [x8, :lo12:job_data_size_limit]
	mov	w9, #1073741824
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_optz_more_than_max, .Lfunc_end0-cttest_optz_more_than_max
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-z1073741825"
	.size	.L.str, 13
	.type	.L__const.cttest_optz_more_than_max.args,@object // @__const.cttest_optz_more_than_max.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optz_more_than_max.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optz_more_than_max.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.word	0                               // 0x0
	.size	srv, 4
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.word	0                               // 0x0
	.size	job_data_size_limit, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv
	.addrsig_sym job_data_size_limit