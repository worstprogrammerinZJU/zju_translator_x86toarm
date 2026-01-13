	.text
	.p2align	2                               // -- Begin function test_typedef
	.type	test_typedef,@function
test_typedef:                           // @test_typedef
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.test_typedef.a
	add	x8, x8, :lo12:.L__const.test_typedef.a
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	adrp	x8, .L__const.test_typedef.b
	add	x8, x8, :lo12:.L__const.test_typedef.b
	ldr	x9, [x8]
	str	x9, [sp, #8]
	ldr	w8, [x8, #8]
	str	w8, [sp, #16]
	mov	w1, #2
	mov	w0, w1
	bl	expect
	mov	w1, #3
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_typedef, .Lfunc_end0-test_typedef
                                        // -- End function
	.type	.L__const.test_typedef.a,@object // @__const.test_typedef.a
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.test_typedef.a:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.size	.L__const.test_typedef.a, 8
	.type	.L__const.test_typedef.b,@object // @__const.test_typedef.b
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_typedef.b:
	.word	3                               // 0x3
	.word	4                               // 0x4
	.word	5                               // 0x5
	.size	.L__const.test_typedef.b, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_typedef
	.addrsig_sym expect