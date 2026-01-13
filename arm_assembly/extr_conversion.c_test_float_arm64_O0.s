	.text
	.p2align	2                               // -- Begin function test_float
	.type	test_float,@function
test_float:                             // @test_float
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	fmov	d0, #4.00000000
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	fcvt	s0, d0
	str	s0, [sp, #4]
	ldr	s0, [sp, #4]
	mov	w0, #4
	bl	expectf
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_float, .Lfunc_end0-test_float
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_float
	.addrsig_sym expectf