	.text
	.globl	cttest_optVFVu                  // -- Begin function cttest_optVFVu
	.p2align	2
	.type	cttest_optVFVu,@function
cttest_optVFVu:                         // @cttest_optVFVu
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp]                        // 8-byte Folded Spill
	adrp	x8, .L__const.cttest_optVFVu.args
	add	x8, x8, :lo12:.L__const.cttest_optVFVu.args
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	bl	optparse
	adrp	x8, verbose
	ldr	w8, [x8, :lo12:verbose]
	subs	w8, w8, #2
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:srv]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_optVFVu, .Lfunc_end0-cttest_optVFVu
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-VFVukr"
	.size	.L.str, 8
	.type	.L__const.cttest_optVFVu.args,@object // @__const.cttest_optVFVu.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optVFVu.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optVFVu.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	16
	.size	srv, 16
	.type	verbose,@object                 // @verbose
	.globl	verbose
	.p2align	2
verbose:
	.word	0                               // 0x0
	.size	verbose, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"kr"
	.size	.L.str.1, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv
	.addrsig_sym verbose