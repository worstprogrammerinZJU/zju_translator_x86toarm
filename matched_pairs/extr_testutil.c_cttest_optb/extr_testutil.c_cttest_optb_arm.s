	.text
	.globl	cttest_optb                     // -- Begin function cttest_optb
	.p2align	2
	.type	cttest_optb,@function
cttest_optb:                            // @cttest_optb
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp]                        // 8-byte Folded Spill
	adrp	x8, .L__const.cttest_optb.args
	add	x8, x8, :lo12:.L__const.cttest_optb.args
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	bl	optparse
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x8, #4]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, :lo12:srv]
	subs	w8, w8, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_optb, .Lfunc_end0-cttest_optb
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-bfoo"
	.size	.L.str, 6
	.type	.L__const.cttest_optb.args,@object // @__const.cttest_optb.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optb.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optb.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	8
	.size	srv, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"foo"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv