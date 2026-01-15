	.text
	.p2align	2                               // -- Begin function test_char
	.type	test_char,@function
test_char:                              // @test_char
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w1, #65
	mov	w0, w1
	bl	expect
	mov	w1, #97
	mov	w0, w1
	bl	expect
	mov	w1, #7
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #8
	mov	w0, w1
	bl	expect
	mov	w1, #12
	mov	w0, w1
	bl	expect
	mov	w1, #10
	mov	w0, w1
	bl	expect
	mov	w1, #13
	mov	w0, w1
	bl	expect
	mov	w1, #9
	mov	w0, w1
	bl	expect
	mov	w1, #11
	mov	w0, w1
	bl	expect
	mov	w1, #27
	mov	w0, w1
	bl	expect
	mov	w1, wzr
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #15
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #-99
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #-1
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #18
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_char, .Lfunc_end0-test_char
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_char
	.addrsig_sym expect