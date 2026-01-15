	.text
	.p2align	2                               // -- Begin function test_constexpr
	.type	test_constexpr,@function
test_constexpr:                         // @test_constexpr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w1, #4
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_constexpr, .Lfunc_end0-test_constexpr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_constexpr
	.addrsig_sym expect