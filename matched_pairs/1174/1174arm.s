	.text
	.globl	fgets                           // -- Begin function fgets
	.p2align	2
	.type	fgets,@function
fgets:                                  // @fgets
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	adrp	x0, fgets
	add	x0, x0, :lo12:fgets
	bl	GET_REAL
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	ldr	x2, [sp, #16]
	bl	real_fgets
	str	x0, [sp, #8]
	adrp	x8, fail_read
	ldr	x8, [x8, :lo12:fail_read]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	fgets, .Lfunc_end0-fgets
                                        // -- End function
	.type	fail_read,@object               // @fail_read
	.bss
	.globl	fail_read
	.p2align	3
fail_read:
	.xword	0
	.size	fail_read, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fgets
	.addrsig_sym GET_REAL
	.addrsig_sym real_fgets
	.addrsig_sym fail_read