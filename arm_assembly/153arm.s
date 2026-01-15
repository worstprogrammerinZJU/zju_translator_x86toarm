	.text
	.p2align	2                               // -- Begin function f_halt
	.type	f_halt,@function
f_halt:                                 // @f_halt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	jv_invalid
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	jv_invalid
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	jq_halt
	bl	jv_true
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_halt, .Lfunc_end0-f_halt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_halt
	.addrsig_sym jv_free
	.addrsig_sym jq_halt
	.addrsig_sym jv_invalid
	.addrsig_sym jv_true