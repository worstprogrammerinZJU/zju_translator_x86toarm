	.text
	.p2align	2                               // -- Begin function test_bool
	.type	test_bool,@function
test_bool:                              // @test_bool
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	sturb	w8, [x29, #-1]
	ldurb	w8, [x29, #-1]
	mov	w0, #1
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	and	w1, w8, #0x1
	bl	expect
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	sturb	w8, [x29, #-1]
	ldurb	w8, [x29, #-1]
	and	w1, w8, #0x1
	bl	expect
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	sturb	w8, [x29, #-1]
	ldurb	w8, [x29, #-1]
	and	w1, w8, #0x1
	bl	expect
	sturb	wzr, [x29, #-1]
	ldurb	w8, [x29, #-1]
	and	w1, w8, #0x1
	mov	w0, wzr
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_bool, .Lfunc_end0-test_bool
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_bool
	.addrsig_sym expect