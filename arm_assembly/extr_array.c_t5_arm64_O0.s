	.text
	.p2align	2                               // -- Begin function t5
	.type	t5,@function
t5:                                     // @t5
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	add	x8, sp, #24
	mov	w0, #1
	str	w0, [sp, #28]
	mov	w9, #2
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	str	w9, [sp, #40]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #4]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	t5, .Lfunc_end0-t5
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect