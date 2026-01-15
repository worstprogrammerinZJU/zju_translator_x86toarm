	.text
	.globl	walresvput                      // -- Begin function walresvput
	.p2align	2
	.type	walresvput,@function
walresvput:                             // @walresvput
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	ldrsw	x8, [sp, #12]
	add	x8, x8, #4
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	w0, [x8]
	bl	strlen
	ldrsw	x8, [sp, #12]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldrsw	x8, [sp, #12]
	add	x8, x8, #4
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldrsw	x8, [sp, #12]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldrsw	x8, [sp, #12]
	add	x8, x8, #4
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldrsw	x8, [sp, #12]
	add	x8, x8, #4
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #12]
	bl	reserve
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	walresvput, .Lfunc_end0-walresvput
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym reserve