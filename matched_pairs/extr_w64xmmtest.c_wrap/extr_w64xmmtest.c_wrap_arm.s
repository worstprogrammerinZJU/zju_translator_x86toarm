	.text
	.globl	swr_convert                     // -- Begin function swr_convert
	.p2align	2
	.type	swr_convert,@function
swr_convert:                            // @swr_convert
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	str	x3, [sp, #8]
	str	w4, [sp, #4]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	w3, [sp, #20]
	ldr	x4, [sp, #8]
	ldr	w5, [sp, #4]
	adrp	x0, swr_convert
	add	x0, x0, :lo12:swr_convert
	bl	testxmmclobbers
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	swr_convert, .Lfunc_end0-swr_convert
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_convert
	.addrsig_sym testxmmclobbers