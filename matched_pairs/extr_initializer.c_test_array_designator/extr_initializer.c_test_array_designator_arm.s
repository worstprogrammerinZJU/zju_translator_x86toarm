	.text
	.p2align	2                               // -- Begin function test_array_designator
	.type	test_array_designator,@function
test_array_designator:                  // @test_array_designator
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	adrp	x8, .L__const.test_array_designator.v
	add	x8, x8, :lo12:.L__const.test_array_designator.v
	ldr	x9, [x8]
	stur	x9, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-8]
	ldur	w1, [x29, #-16]
	mov	w0, wzr
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-12]
	mov	w0, #5
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldur	w1, [x29, #-8]
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	adrp	x8, .L__const.test_array_designator.x
	add	x8, x8, :lo12:.L__const.test_array_designator.x
	ldr	q0, [x8]
	stur	q0, [x29, #-32]
	ldur	w1, [x29, #-32]
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldur	w1, [x29, #-28]
	bl	expect
	ldur	w1, [x29, #-24]
	mov	w0, #1
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-20]
	mov	w0, #2
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	adrp	x8, .L__const.test_array_designator.x2
	add	x8, x8, :lo12:.L__const.test_array_designator.x2
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	ldr	w1, [sp, #32]
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldr	w1, [sp, #36]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #40]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w1, [sp, #44]
	bl	expect
	ldr	w1, [sp, #48]
	mov	w0, #3
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	expect
	ldr	w1, [sp, #52]
	mov	w0, #4
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	adrp	x8, .L__const.test_array_designator.x3
	add	x8, x8, :lo12:.L__const.test_array_designator.x3
	ldr	x9, [x8]
	str	x9, [sp, #16]
	ldr	w8, [x8, #8]
	str	w8, [sp, #24]
	ldr	w1, [sp, #16]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w1, [sp, #20]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	w1, [sp, #24]
	bl	expect
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	test_array_designator, .Lfunc_end0-test_array_designator
                                        // -- End function
	.type	.L__const.test_array_designator.v,@object // @__const.test_array_designator.v
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_array_designator.v:
	.word	0                               // 0x0
	.word	5                               // 0x5
	.word	0                               // 0x0
	.size	.L__const.test_array_designator.v, 12
	.type	.L__const.test_array_designator.x,@object // @__const.test_array_designator.x
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.test_array_designator.x:
	.zero	8
	.word	1                               // 0x1
	.word	2                               // 0x2
	.size	.L__const.test_array_designator.x, 16
	.type	.L__const.test_array_designator.x2,@object // @__const.test_array_designator.x2
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_array_designator.x2:
	.zero	8
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.word	4                               // 0x4
	.size	.L__const.test_array_designator.x2, 24
	.type	.L__const.test_array_designator.x3,@object // @__const.test_array_designator.x3
	.p2align	2
.L__const.test_array_designator.x3:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.size	.L__const.test_array_designator.x3, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_array_designator
	.addrsig_sym expect