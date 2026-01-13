	.text
	.globl	cttest_opts                     // -- Begin function cttest_opts
	.p2align	2
	.type	cttest_opts,@function
cttest_opts:                            // @cttest_opts
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.cttest_opts.args
	add	x8, x8, :lo12:.L__const.cttest_opts.args
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	adrp	x8, srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	bl	optparse
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, :lo12:srv]
	subs	w8, w8, #1234
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_opts, .Lfunc_end0-cttest_opts
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-s1234"
	.size	.L.str, 7
	.type	.L__const.cttest_opts.args,@object // @__const.cttest_opts.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_opts.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_opts.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.size	srv, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv