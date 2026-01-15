	.text
	.p2align	2                               // -- Begin function undef
	.type	undef,@function
undef:                                  // @undef
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #3
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	stur	w8, [x29, #-4]
	mov	w1, #10
	mov	w0, w1
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w1, #16
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	undef, .Lfunc_end0-undef
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym undef
	.addrsig_sym expect