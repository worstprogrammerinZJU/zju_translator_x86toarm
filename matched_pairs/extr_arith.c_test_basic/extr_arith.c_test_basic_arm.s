	.text
	.p2align	2                               // -- Begin function test_basic
	.type	test_basic,@function
test_basic:                             // @test_basic
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w1, wzr
	stur	w1, [x29, #-12]                 // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	mov	w1, #3
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #10
	mov	w0, w1
	bl	expect
	mov	w1, #11
	mov	w0, w1
	bl	expect
	mov	w1, #14
	mov	w0, w1
	bl	expect
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, #98
	mov	w0, w1
	bl	expect
	mov	w0, #-1
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	bl	expect
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	mov	w9, #1
	stur	w9, [x29, #-8]                  // 4-byte Folded Spill
	add	w1, w8, #1
	bl	expect
	ldur	w1, [x29, #-8]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-8]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_basic, .Lfunc_end0-test_basic
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_basic
	.addrsig_sym expect