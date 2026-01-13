	.text
	.p2align	2                               // -- Begin function t3
	.type	t3,@function
t3:                                     // @t3
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	add	x8, sp, #16
	str	x8, [sp, #8]
	mov	w0, #62
	str	w0, [sp, #44]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #28]
	bl	expect
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	t3, .Lfunc_end0-t3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect