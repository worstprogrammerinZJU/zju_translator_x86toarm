	.text
	.p2align	2                               // -- Begin function t7
	.type	t7,@function
t7:                                     // @t7
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w0, #68
	str	w0, [sp, #44]
	ldr	w1, [sp, #44]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	t7, .Lfunc_end0-t7
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t7
	.addrsig_sym expect