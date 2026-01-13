	.text
	.p2align	2                               // -- Begin function elu_activate
	.type	elu_activate,@function
elu_activate:                           // @elu_activate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	fcmp	s0, #0.0
	cset	w8, ge
	and	w8, w8, #0x1
	scvtf	s0, w8
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	ldur	s0, [x29, #-4]
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	ldur	s0, [x29, #-4]
	fcmp	s0, #0.0
	cset	w8, mi
	and	w8, w8, #0x1
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	s0, [x29, #-4]
	bl	exp
	ldr	w8, [sp]                        // 4-byte Folded Reload
	ldr	s1, [sp, #4]                    // 4-byte Folded Reload
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	subs	w9, w0, #1
	mul	w8, w8, w9
	scvtf	s2, w8
	fmadd	s0, s0, s1, s2
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	elu_activate, .Lfunc_end0-elu_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym elu_activate
	.addrsig_sym exp