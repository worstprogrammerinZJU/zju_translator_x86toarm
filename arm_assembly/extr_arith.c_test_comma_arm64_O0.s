	.text
	.p2align	2                               // -- Begin function test_comma
	.type	test_comma,@function
test_comma:                             // @test_comma
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, #3
	mov	w0, w1
	bl	expect
	fmov	d0, #7.00000000
	mov	w0, #7
	bl	expectf
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_comma, .Lfunc_end0-test_comma
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_comma
	.addrsig_sym expect
	.addrsig_sym expectf