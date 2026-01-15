	.text
	.p2align	2                               // -- Begin function flexible_member
	.type	flexible_member,@function
flexible_member:                        // @flexible_member
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w0, #4
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	mov	x1, #4
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	expect
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	expect
	mov	w0, wzr
	mov	x1, xzr
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	flexible_member, .Lfunc_end0-flexible_member
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flexible_member
	.addrsig_sym expect