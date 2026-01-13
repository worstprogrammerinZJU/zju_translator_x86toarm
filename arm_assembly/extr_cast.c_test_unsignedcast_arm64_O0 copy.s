	.text
	.p2align	2                               // -- Begin function test_unsignedcast
	.type	test_unsignedcast,@function
test_unsignedcast:                      // @test_unsignedcast
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #255
	sturb	w8, [x29, #-1]
	ldurb	w8, [x29, #-1]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, gt
	mov	w0, #1
	and	w1, w8, #0x1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_unsignedcast, .Lfunc_end0-test_unsignedcast
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unsignedcast
	.addrsig_sym expect