	.text
	.p2align	2                               // -- Begin function test_not
	.type	test_not,@function
test_not:                               // @test_not
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, #-1
	mov	w0, w1
	bl	expect
	mov	w1, #-3
	mov	w0, w1
	bl	expect
	mov	w1, wzr
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_not, .Lfunc_end0-test_not
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_not
	.addrsig_sym expect