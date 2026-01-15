	.text
	.p2align	2                               // -- Begin function test_and
	.type	test_and,@function
test_and:                               // @test_and
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, wzr
	mov	w0, w1
	bl	expect
	mov	w1, #2
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_and, .Lfunc_end0-test_and
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_and
	.addrsig_sym expect