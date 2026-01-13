	.text
	.p2align	2                               // -- Begin function assert_true2
	.type	assert_true2,@function
assert_true2:                           // @assert_true2
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w1, [x29, #-4]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	assert_true2, .Lfunc_end0-assert_true2
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d: assert_true: %s"
	.size	.L.str, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert_true2
	.addrsig_sym error