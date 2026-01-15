	.text
	.globl	cttest_optV                     // -- Begin function cttest_optV
	.p2align	2
	.type	cttest_optV,@function
cttest_optV:                            // @cttest_optV
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.cttest_optV.args
	add	x8, x8, :lo12:.L__const.cttest_optV.args
	ldr	q0, [x8]
	mov	x1, sp
	str	q0, [sp]
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	bl	optparse
	adrp	x8, verbose
	ldr	w8, [x8, :lo12:verbose]
	subs	w8, w8, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_optV, .Lfunc_end0-cttest_optV
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-V"
	.size	.L.str, 3
	.type	.L__const.cttest_optV.args,@object // @__const.cttest_optV.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optV.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optV.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.word	0                               // 0x0
	.size	srv, 4
	.type	verbose,@object                 // @verbose
	.globl	verbose
	.p2align	2
verbose:
	.word	0                               // 0x0
	.size	verbose, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv
	.addrsig_sym verbose