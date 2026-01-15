	.text
	.p2align	2                               // -- Begin function incdec_struct
	.type	incdec_struct,@function
incdec_struct:                          // @incdec_struct
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, .L__const.incdec_struct.a
	add	x8, x8, :lo12:.L__const.incdec_struct.a
	ldr	q0, [x8]
	sub	x8, x29, #16
	stur	q0, [x29, #-16]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	mov	w0, #1
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	expect
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #4]
	mov	w0, #2
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	bl	expect
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	mov	w0, #3
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	bl	expect
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #4]
	mov	w0, #4
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #4]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #4]
	bl	expect
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
	bl	expect
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #4]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	incdec_struct, .Lfunc_end0-incdec_struct
                                        // -- End function
	.type	.L__const.incdec_struct.a,@object // @__const.incdec_struct.a
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.incdec_struct.a:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.word	4                               // 0x4
	.size	.L__const.incdec_struct.a, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym incdec_struct
	.addrsig_sym expect