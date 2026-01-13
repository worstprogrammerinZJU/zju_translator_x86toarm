	.text
	.p2align	2                               // -- Begin function test_typedef
	.type	test_typedef,@function
test_typedef:                           // @test_typedef
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w0, #5
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	adrp	x8, .L__const.test_typedef.b
	add	x8, x8, :lo12:.L__const.test_typedef.b
	ldr	x9, [x8]
	stur	x9, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-8]
	ldur	w1, [x29, #-12]
	mov	w0, #2
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	stur	w0, [x29, #-20]
	ldur	w1, [x29, #-20]
	bl	expect
	mov	w0, #3
	str	w0, [sp, #24]
	ldr	w1, [sp, #24]
	bl	expect
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, #1
	str	w0, [sp, #20]
	str	w8, [sp, #16]
	mov	w8, #4
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	str	w8, [sp, #12]
	ldr	w1, [sp, #20]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #16]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w1, [sp, #12]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	test_typedef, .Lfunc_end0-test_typedef
                                        // -- End function
	.type	.L__const.test_typedef.b,@object // @__const.test_typedef.b
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_typedef.b:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.size	.L__const.test_typedef.b, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_typedef
	.addrsig_sym expect