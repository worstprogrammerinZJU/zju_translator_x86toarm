	.text
	.p2align	2                               // -- Begin function test_struct
	.type	test_struct,@function
test_struct:                            // @test_struct
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, .L__const.test_struct.we
	add	x8, x8, :lo12:.L__const.test_struct.we
	ldr	q0, [x8]
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldr	q0, [x8, #16]
	str	q0, [sp, #48]
	adrp	x8, .L__const.test_struct.w
	add	x8, x8, :lo12:.L__const.test_struct.w
	ldr	q0, [x8]
	mov	x1, sp
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	mov	w2, #8
	bl	verify
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	test_struct, .Lfunc_end0-test_struct
                                        // -- End function
	.type	.L__const.test_struct.we,@object // @__const.test_struct.we
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2
.L__const.test_struct.we:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.test_struct.we, 32
	.type	.L__const.test_struct.w,@object // @__const.test_struct.w
	.p2align	2
.L__const.test_struct.w:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.test_struct.w, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_struct
	.addrsig_sym verify