	.text
	.p2align	2                               // -- Begin function test_bool
	.type	test_bool,@function
test_bool:                              // @test_bool
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, wzr
	mov	w0, w1
	bl	expect
	mov	w1, #1
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_bool, .Lfunc_end0-test_bool
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_bool
	.addrsig_sym expect