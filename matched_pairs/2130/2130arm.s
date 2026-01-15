	.text
	.p2align	2                               // -- Begin function test_arrays
	.type	test_arrays,@function
test_arrays:                            // @test_arrays
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, #1
	mov	w0, w1
	bl	expect
	mov	w1, #7
	mov	w0, w1
	bl	expect
	mov	w1, #30
	mov	w0, w1
	bl	expect
	mov	w1, #32
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_arrays, .Lfunc_end0-test_arrays
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_arrays
	.addrsig_sym expect