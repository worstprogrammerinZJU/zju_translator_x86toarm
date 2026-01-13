	.text
	.p2align	2                               // -- Begin function test_nested
	.type	test_nested,@function
test_nested:                            // @test_nested
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.test_nested.v
	add	x8, x8, :lo12:.L__const.test_nested.v
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w1, [sp]
	mov	w0, #1
	bl	expect
	ldr	w1, [sp, #4]
	mov	w0, #2
	bl	expect
	ldrb	w1, [sp, #8]
	mov	w0, #3
	bl	expect
	ldrb	w1, [sp, #15]
	mov	w0, #10
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_nested, .Lfunc_end0-test_nested
                                        // -- End function
	.type	.L__const.test_nested.v,@object // @__const.test_nested.v
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.test_nested.v:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.ascii	"\003\004\005\006\007\b\t\n"
	.size	.L__const.test_nested.v, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_nested
	.addrsig_sym expect