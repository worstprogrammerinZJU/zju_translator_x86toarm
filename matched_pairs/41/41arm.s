	.text
	.p2align	2                               // -- Begin function test_inc_dec
	.type	test_inc_dec,@function
test_inc_dec:                           // @test_inc_dec
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #15
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	add	w8, w1, #1
	stur	w8, [x29, #-4]
	bl	expect
	ldur	w1, [x29, #-4]
	mov	w0, #16
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	subs	w8, w1, #1
	stur	w8, [x29, #-4]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	bl	expect
	ldur	w8, [x29, #-4]
	subs	w1, w8, #1
	stur	w1, [x29, #-4]
	mov	w0, #14
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	add	w1, w8, #1
	stur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldur	w1, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_inc_dec, .Lfunc_end0-test_inc_dec
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_inc_dec
	.addrsig_sym expect