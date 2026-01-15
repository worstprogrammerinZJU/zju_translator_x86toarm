	.text
	.globl	yy_scan_string                  // -- Begin function yy_scan_string
	.p2align	2
	.type	yy_scan_string,@function
yy_scan_string:                         // @yy_scan_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, w8
	ldur	w2, [x29, #-12]
	bl	yy_scan_bytes
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_scan_string, .Lfunc_end0-yy_scan_string
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_scan_bytes
	.addrsig_sym strlen