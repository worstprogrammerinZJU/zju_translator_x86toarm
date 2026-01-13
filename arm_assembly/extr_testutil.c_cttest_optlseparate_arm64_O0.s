	.text
	.globl	cttest_optlseparate             // -- Begin function cttest_optlseparate
	.p2align	2
	.type	cttest_optlseparate,@function
cttest_optlseparate:                    // @cttest_optlseparate
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, .L__const.cttest_optlseparate.args
	add	x8, x8, :lo12:.L__const.cttest_optlseparate.args
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	adrp	x8, srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	bl	optparse
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:srv]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	cttest_optlseparate, .Lfunc_end0-cttest_optlseparate
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-l"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"localhost"
	.size	.L.str.1, 10
	.type	.L__const.cttest_optlseparate.args,@object // @__const.cttest_optlseparate.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optlseparate.args:
	.xword	.L.str
	.xword	.L.str.1
	.xword	0
	.size	.L__const.cttest_optlseparate.args, 24
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
	.addrsig_sym strcmp
	.addrsig_sym srv