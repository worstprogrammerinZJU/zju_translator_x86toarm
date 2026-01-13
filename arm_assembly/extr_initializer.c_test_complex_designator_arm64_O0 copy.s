	.text
	.p2align	2                               // -- Begin function test_complex_designator
	.type	test_complex_designator,@function
test_complex_designator:                // @test_complex_designator
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	sub	x0, x29, #48
	adrp	x1, .L__const.test_complex_designator.y
	add	x1, x1, :lo12:.L__const.test_complex_designator.y
	mov	x2, #48
	bl	memcpy
	ldur	w1, [x29, #-48]
	mov	w0, wzr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	w1, [x29, #-44]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	w1, [x29, #-40]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	w1, [x29, #-36]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	w1, [x29, #-32]
	bl	expect
	ldur	w1, [x29, #-28]
	mov	w0, #10
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-24]
	mov	w0, #11
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-20]
	mov	w0, #5
	bl	expect
	ldur	w1, [x29, #-16]
	mov	w0, #6
	bl	expect
	ldur	w1, [x29, #-12]
	mov	w0, #7
	bl	expect
	ldur	w1, [x29, #-8]
	mov	w0, #8
	bl	expect
	ldur	w1, [x29, #-4]
	mov	w0, #9
	bl	expect
	adrp	x8, .L__const.test_complex_designator.y2
	add	x8, x8, :lo12:.L__const.test_complex_designator.y2
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	ldr	w1, [sp, #32]
	mov	w0, #1
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	expect
	ldr	w1, [sp, #44]
	mov	w0, #3
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	adrp	x8, .L__const.test_complex_designator.y3
	add	x8, x8, :lo12:.L__const.test_complex_designator.y3
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	w1, [sp, #16]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #20]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w1, [sp, #24]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	w1, [sp, #28]
	bl	expect
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	test_complex_designator, .Lfunc_end0-test_complex_designator
                                        // -- End function
	.type	.L__const.test_complex_designator.y,@object // @__const.test_complex_designator.y
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_complex_designator.y:
	.zero	8
	.zero	8
	.word	0                               // 0x0
	.word	10                              // 0xa
	.word	11                              // 0xb
	.word	5                               // 0x5
	.word	6                               // 0x6
	.word	7                               // 0x7
	.word	8                               // 0x8
	.word	9                               // 0x9
	.size	.L__const.test_complex_designator.y, 48
	.type	.L__const.test_complex_designator.y2,@object // @__const.test_complex_designator.y2
	.p2align	2
.L__const.test_complex_designator.y2:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	3                               // 0x3
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.test_complex_designator.y2, 24
	.type	.L__const.test_complex_designator.y3,@object // @__const.test_complex_designator.y3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.test_complex_designator.y3:
	.word	1                               // 0x1
	.word	10                              // 0xa
	.word	11                              // 0xb
	.word	0                               // 0x0
	.size	.L__const.test_complex_designator.y3, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_complex_designator
	.addrsig_sym expect