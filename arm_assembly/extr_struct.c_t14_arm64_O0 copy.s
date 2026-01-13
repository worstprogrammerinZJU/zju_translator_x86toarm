	.text
	.p2align	2                               // -- Begin function t14
	.type	t14,@function
t14:                                    // @t14
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t14.v
	add	x8, x8, :lo12:.L__const.t14.v
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w1, [sp, #4]
	mov	w0, #2
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t14, .Lfunc_end0-t14
                                        // -- End function
	.type	.L__const.t14.v,@object         // @__const.t14.v
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t14.v:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.size	.L__const.t14.v, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t14
	.addrsig_sym expect