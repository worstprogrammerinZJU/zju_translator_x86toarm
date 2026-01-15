	.text
	.p2align	2                               // -- Begin function func_ptr_call
	.type	func_ptr_call,@function
func_ptr_call:                          // @func_ptr_call
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	w0, #2
	bl	ptrtest3
	mov	w0, #4
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expectf
	adrp	x8, :got:ptrtest1
	ldr	x8, [x8, :got_lo12:ptrtest1]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	blr	x8
	mov	w1, w0
	mov	w0, #55
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	adrp	x8, :got:ptrtest2
	ldr	x8, [x8, :got_lo12:ptrtest2]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	blr	x8
	mov	w1, w0
	mov	w0, #110
	bl	expect
	adrp	x8, :got:ptrtest3
	ldr	x8, [x8, :got_lo12:ptrtest3]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	fmov	s0, #2.00000000
	blr	x8
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	expectf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	blr	x8
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	expect
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	mov	w1, #5
	bl	ptrtest4
	mov	w1, w0
	mov	w0, #10
	bl	expect
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	func_ptr_call, .Lfunc_end0-func_ptr_call
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym func_ptr_call
	.addrsig_sym expectf
	.addrsig_sym ptrtest3
	.addrsig_sym ptrtest1
	.addrsig_sym expect
	.addrsig_sym ptrtest2
	.addrsig_sym ptrtest4