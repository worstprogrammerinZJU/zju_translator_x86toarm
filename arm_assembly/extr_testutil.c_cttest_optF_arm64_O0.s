	.text
	.globl	cttest_optF                     // -- Begin function cttest_optF
	.p2align	2
	.type	cttest_optF,@function
cttest_optF:                            // @cttest_optF
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, .L__const.cttest_optF.args
	add	x8, x8, :lo12:.L__const.cttest_optF.args
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
	ldr	x8, [x8, :lo12:srv]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	cttest_optF, .Lfunc_end0-cttest_optF
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-f1234"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"-F"
	.size	.L.str.1, 3
	.type	.L__const.cttest_optF.args,@object // @__const.cttest_optF.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optF.args:
	.xword	.L.str
	.xword	.L.str.1
	.xword	0
	.size	.L__const.cttest_optF.args, 24
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	8
	.size	srv, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv