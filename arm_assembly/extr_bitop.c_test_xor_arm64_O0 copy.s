	.text
	.p2align	2                               // -- Begin function test_xor
	.type	test_xor,@function
test_xor:                               // @test_xor
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w1, #10
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_xor, .Lfunc_end0-test_xor
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_xor
	.addrsig_sym expect