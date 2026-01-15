	.text
	.p2align	2                               // -- Begin function test_relative
	.type	test_relative,@function
test_relative:                          // @test_relative
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w1, #1
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	mov	w1, wzr
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_relative, .Lfunc_end0-test_relative
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_relative
	.addrsig_sym expect