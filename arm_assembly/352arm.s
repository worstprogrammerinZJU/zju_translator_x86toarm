	.text
	.p2align	2                               // -- Begin function test_if
	.type	test_if,@function
test_if:                                // @test_if
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	test_if1
	mov	w1, w0
	mov	w0, #97
	bl	expect
	bl	test_if2
	mov	w1, w0
	mov	w0, #98
	bl	expect
	bl	test_if3
	mov	w1, w0
	mov	w0, #99
	bl	expect
	bl	test_if4
	mov	w1, w0
	mov	w0, #100
	bl	expect
	bl	test_if5
	mov	w1, w0
	mov	w0, #101
	bl	expect
	bl	test_if6
	mov	w1, w0
	mov	w0, #102
	bl	expect
	bl	test_if7
	mov	w1, w0
	mov	w0, #103
	bl	expect
	bl	test_if8
	mov	w1, w0
	mov	w0, #104
	bl	expect
	bl	test_if9
	mov	w1, w0
	mov	w0, #105
	bl	expect
	bl	test_if10
	mov	w1, w0
	mov	w0, #106
	bl	expect
	bl	test_if11
	mov	w1, w0
	mov	w0, #107
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_if, .Lfunc_end0-test_if
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_if
	.addrsig_sym expect
	.addrsig_sym test_if1
	.addrsig_sym test_if2
	.addrsig_sym test_if3
	.addrsig_sym test_if4
	.addrsig_sym test_if5
	.addrsig_sym test_if6
	.addrsig_sym test_if7
	.addrsig_sym test_if8
	.addrsig_sym test_if9
	.addrsig_sym test_if10
	.addrsig_sym test_if11