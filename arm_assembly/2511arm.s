	.text
	.p2align	2                               // -- Begin function test_pointer
	.type	test_pointer,@function
test_pointer:                           // @test_pointer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	w1, #8
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #40
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	test_pointer, .Lfunc_end0-test_pointer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_pointer
	.addrsig_sym expect