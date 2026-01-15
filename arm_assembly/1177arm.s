	.text
	.globl	fwrite                          // -- Begin function fwrite
	.p2align	2
	.type	fwrite,@function
fwrite:                                 // @fwrite
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	adrp	x0, fwrite
	add	x0, x0, :lo12:fwrite
	bl	GET_REAL
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	real_fwrite
	str	x0, [sp]
	adrp	x8, fail_write
	ldr	x8, [x8, :lo12:fail_write]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	fwrite, .Lfunc_end0-fwrite
                                        // -- End function
	.type	fail_write,@object              // @fail_write
	.bss
	.globl	fail_write
	.p2align	3
fail_write:
	.xword	0
	.size	fail_write, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fwrite
	.addrsig_sym GET_REAL
	.addrsig_sym real_fwrite
	.addrsig_sym fail_write