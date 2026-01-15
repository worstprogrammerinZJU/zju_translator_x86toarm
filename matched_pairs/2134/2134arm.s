	.text
	.p2align	2                               // -- Begin function test_unsigned
	.type	test_unsigned,@function
test_unsigned:                          // @test_unsigned
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, #1
	mov	w0, w1
	bl	expect
	mov	w1, #2
	mov	w0, w1
	bl	expect
	mov	w1, #4
	mov	w0, w1
	bl	expect
	mov	w1, #8
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_unsigned, .Lfunc_end0-test_unsigned
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unsigned
	.addrsig_sym expect