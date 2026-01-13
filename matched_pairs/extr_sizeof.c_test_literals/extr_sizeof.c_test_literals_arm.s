	.text
	.p2align	2                               // -- Begin function test_literals
	.type	test_literals,@function
test_literals:                          // @test_literals
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #8
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_literals, .Lfunc_end0-test_literals
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_literals
	.addrsig_sym expect