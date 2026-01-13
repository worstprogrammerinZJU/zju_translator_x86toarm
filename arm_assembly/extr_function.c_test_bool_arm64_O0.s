	.text
	.p2align	2                               // -- Begin function test_bool
	.type	test_bool,@function
test_bool:                              // @test_bool
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #256
	bl	booltest1
	mov	w1, w0
	mov	w0, wzr
	bl	expect
	mov	w0, #257
	bl	booltest1
	mov	w1, w0
	mov	w0, #1
	stur	w0, [x29, #-4]                  // 4-byte Folded Spill
	bl	expect
	mov	w0, #512
	bl	booltest2
	mov	w1, w0
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	bl	expect
	mov	w0, #513
	bl	booltest2
	mov	w1, w0
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_bool, .Lfunc_end0-test_bool
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_bool
	.addrsig_sym expect
	.addrsig_sym booltest1
	.addrsig_sym booltest2