	.text
	.globl	ctfail                          // -- Begin function ctfail
	.p2align	2
	.type	ctfail,@function
ctfail:                                 // @ctfail
// %bb.0:
	adrp	x9, fail
	mov	w8, #1
	str	w8, [x9, :lo12:fail]
	ret
.Lfunc_end0:
	.size	ctfail, .Lfunc_end0-ctfail
                                        // -- End function
	.type	fail,@object                    // @fail
	.bss
	.globl	fail
	.p2align	2
fail:
	.word	0                               // 0x0
	.size	fail, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fail