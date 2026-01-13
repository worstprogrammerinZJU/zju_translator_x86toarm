	.text
	.p2align	2                               // -- Begin function tanh_activate
	.type	tanh_activate,@function
tanh_activate:                          // @tanh_activate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	s0, [x29, #-4]
	ldur	s1, [x29, #-4]
	fmov	s0, #2.00000000
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	fmul	s0, s0, s1
	fcvtzs	w0, s0
	bl	exp
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w0, #1
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	s1, [x29, #-4]
	fmul	s0, s0, s1
	fcvtzs	w0, s0
	bl	exp
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	add	w9, w0, #1
	sdiv	w8, w8, w9
	scvtf	s0, w8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tanh_activate, .Lfunc_end0-tanh_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tanh_activate
	.addrsig_sym exp