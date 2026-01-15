	.text
	.p2align	2                               // -- Begin function test_struct_designator
	.type	test_struct_designator,@function
test_struct_designator:                 // @test_struct_designator
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.test_struct_designator.v1
	add	x8, x8, :lo12:.L__const.test_struct_designator.v1
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	ldur	w1, [x29, #-8]
	mov	w0, #5
	bl	expect
	ldur	w1, [x29, #-4]
	mov	w0, #1
	bl	expect
	adrp	x8, .L__const.test_struct_designator.v2
	add	x8, x8, :lo12:.L__const.test_struct_designator.v2
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w1, [sp, #20]
	mov	w0, #7
	bl	expect
	adrp	x8, .L__const.test_struct_designator.v3
	add	x8, x8, :lo12:.L__const.test_struct_designator.v3
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w1, [sp, #4]
	mov	w0, #12
	bl	expect
	ldr	w1, [sp, #8]
	mov	w0, #17
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_struct_designator, .Lfunc_end0-test_struct_designator
                                        // -- End function
	.type	.L__const.test_struct_designator.v1,@object // @__const.test_struct_designator.v1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.test_struct_designator.v1:
	.word	5                               // 0x5
	.word	1                               // 0x1
	.size	.L__const.test_struct_designator.v1, 8
	.type	.L__const.test_struct_designator.v2,@object // @__const.test_struct_designator.v2
	.p2align	2
.L__const.test_struct_designator.v2:
	.word	0                               // 0x0
	.word	7                               // 0x7
	.size	.L__const.test_struct_designator.v2, 8
	.type	.L__const.test_struct_designator.v3,@object // @__const.test_struct_designator.v3
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_struct_designator.v3:
	.word	0                               // 0x0
	.word	12                              // 0xc
	.word	17                              // 0x11
	.size	.L__const.test_struct_designator.v3, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_struct_designator
	.addrsig_sym expect