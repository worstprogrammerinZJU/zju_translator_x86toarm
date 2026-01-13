	.text
	.globl	cttest_optu                     // -- Begin function cttest_optu
	.p2align	2
	.type	cttest_optu,@function
cttest_optu:                            // @cttest_optu
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.cttest_optu.args
	add	x8, x8, :lo12:.L__const.cttest_optu.args
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
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
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_optu, .Lfunc_end0-cttest_optu
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-ukr"
	.size	.L.str, 5
	.type	.L__const.cttest_optu.args,@object // @__const.cttest_optu.args
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.cttest_optu.args:
	.xword	.L.str
	.xword	0
	.size	.L__const.cttest_optu.args, 16
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.size	srv, 4
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