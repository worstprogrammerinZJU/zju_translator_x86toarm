	.text
	.globl	cttest_optf                     // -- Begin function cttest_optf
	.p2align	2
	.type	cttest_optf,@function
cttest_optf:                            // @cttest_optf
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, srv
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, .L__const.cttest_optf.args
	add	x8, x8, :lo12:.L__const.cttest_optf.args
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	bl	optparse
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w8, [x8, :lo12:srv]
	mov	w9, #22656
	movk	w9, #18829, lsl #16
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, #4]
	subs	w8, w8, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_optf, .Lfunc_end0-cttest_optf
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-f1234"
	.size	.L.str, 7
	.type	.L__const.cttest_optf.args,@object // @__const.cttest_optf.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optf.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optf.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	8
	.size	srv, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv