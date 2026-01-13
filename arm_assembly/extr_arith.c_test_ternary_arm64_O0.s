	.text
	.p2align	2                               // -- Begin function test_ternary
	.type	test_ternary,@function
test_ternary:                           // @test_ternary
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w1, #51
	mov	w0, w1
	bl	expect
	mov	w1, #52
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #26
	mov	w0, w1
	bl	expect
	mov	w1, #17
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #3
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_ternary, .Lfunc_end0-test_ternary
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_ternary
	.addrsig_sym expect