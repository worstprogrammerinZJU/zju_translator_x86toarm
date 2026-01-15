	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function selu_activate
.LCPI0_0:
	.xword	0x3ffac56d5cfaacda              // double 1.6732
.LCPI0_1:
	.xword	0x3ff0cfaacd9e83e4              // double 1.0507
	.text
	.p2align	2
	.type	selu_activate,@function
selu_activate:                          // @selu_activate
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	fcmp	s0, #0.0
	cset	w8, ge
	and	w8, w8, #0x1
	scvtf	d0, w8
	adrp	x8, .LCPI0_1
	ldr	d1, [x8, :lo12:.LCPI0_1]
	fmul	d0, d0, d1
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	ldur	s0, [x29, #-4]
	fcvt	d0, s0
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	ldur	s0, [x29, #-4]
	fcmp	s0, #0.0
	cset	w8, mi
	and	w8, w8, #0x1
	scvtf	d0, w8
	fmul	d0, d0, d1
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	str	d0, [sp]                        // 8-byte Folded Spill
	ldur	s0, [x29, #-4]
	bl	exp
	ldr	d2, [sp]                        // 8-byte Folded Reload
	ldr	d1, [sp, #8]                    // 8-byte Folded Reload
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	subs	w8, w0, #1
	scvtf	d3, w8
	fmul	d2, d2, d3
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	selu_activate, .Lfunc_end0-selu_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym selu_activate
	.addrsig_sym exp