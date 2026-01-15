	.text
	.p2align	2                               // -- Begin function test_primitive
	.type	test_primitive,@function
test_primitive:                         // @test_primitive
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #59
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_primitive, .Lfunc_end0-test_primitive
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_primitive
	.addrsig_sym expect