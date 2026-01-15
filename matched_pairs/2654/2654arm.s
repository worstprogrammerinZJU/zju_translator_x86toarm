	.text
	.globl	walresvupdate                   // -- Begin function walresvupdate
	.p2align	2
	.type	walresvupdate,@function
walresvupdate:                          // @walresvupdate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	ldrsw	x8, [sp, #4]
	add	x8, x8, #4
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldrsw	x8, [sp, #4]
	add	x8, x8, #4
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	reserve
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	walresvupdate, .Lfunc_end0-walresvupdate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym reserve