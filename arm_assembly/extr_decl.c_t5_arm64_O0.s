	.text
	.p2align	2                               // -- Begin function t5
	.type	t5,@function
t5:                                     // @t5
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x9, .L__const.t5.a
	add	x9, x9, :lo12:.L__const.t5.a
	ldr	x10, [x9]
	add	x8, sp, #16
	str	x10, [sp, #16]
	ldr	w9, [x9, #8]
	str	w9, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	mov	w0, #30
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t5, .Lfunc_end0-t5
                                        // -- End function
	.type	.L__const.t5.a,@object          // @__const.t5.a
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t5.a:
	.word	20                              // 0x14
	.word	30                              // 0x1e
	.word	40                              // 0x28
	.size	.L__const.t5.a, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect