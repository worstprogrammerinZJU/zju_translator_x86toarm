	.text
	.p2align	2                               // -- Begin function test_unary
	.type	test_unary,@function
test_unary:                             // @test_unary
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #2
	sturb	w8, [x29, #-1]
	mov	w8, #2
	sturh	w8, [x29, #-4]
	mov	w8, #2
	str	w8, [sp, #8]
	ldurb	w9, [x29, #-1]
	mov	w8, wzr
	str	w8, [sp]                        // 4-byte Folded Spill
	subs	w1, w8, w9
	mov	w0, #-2
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	ldr	w8, [sp]                        // 4-byte Folded Reload
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldursh	w9, [x29, #-4]
	subs	w1, w8, w9
	bl	expect
	ldr	w8, [sp]                        // 4-byte Folded Reload
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w9, [sp, #8]
	subs	w1, w8, w9
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_unary, .Lfunc_end0-test_unary
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unary
	.addrsig_sym expect