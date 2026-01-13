	.text
	.p2align	2                               // -- Begin function t12
	.type	t12,@function
t12:                                    // @t12
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	add	x8, sp, #24
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	w0, #83
	str	w0, [sp, #24]
	ldr	w1, [sp, #24]
	bl	expect
	mov	w0, #84
	str	w0, [sp, #28]
	ldr	w1, [sp, #28]
	bl	expect
	mov	w0, #85
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	str	w0, [sp, #36]
	ldr	w1, [sp, #36]
	bl	expect
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #12]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	t12, .Lfunc_end0-t12
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t12
	.addrsig_sym expect