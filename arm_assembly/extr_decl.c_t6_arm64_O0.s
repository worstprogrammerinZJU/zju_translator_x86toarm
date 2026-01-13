	.text
	.p2align	2                               // -- Begin function t6
	.type	t6,@function
t6:                                     // @t6
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t6.a
	add	x8, x8, :lo12:.L__const.t6.a
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w1, [sp]
	mov	w0, #20
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t6, .Lfunc_end0-t6
                                        // -- End function
	.type	.L__const.t6.a,@object          // @__const.t6.a
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t6.a:
	.word	20                              // 0x14
	.word	30                              // 0x1e
	.word	40                              // 0x28
	.size	.L__const.t6.a, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym expect