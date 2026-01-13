	.text
	.p2align	2                               // -- Begin function test_signedcast
	.type	test_signedcast,@function
test_signedcast:                        // @test_signedcast
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #255
	sturb	w8, [x29, #-1]
	ldursb	w8, [x29, #-1]
	str	w8, [sp, #8]
	ldr	w0, [sp, #8]
	mov	w1, #-1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_signedcast, .Lfunc_end0-test_signedcast
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_signedcast
	.addrsig_sym expect