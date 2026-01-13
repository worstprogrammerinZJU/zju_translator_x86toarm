	.text
	.p2align	2                               // -- Begin function t4
	.type	t4,@function
t4:                                     // @t4
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t4.a
	add	x8, x8, :lo12:.L__const.t4.a
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w1, [sp]
	mov	w0, #1
	bl	expect
	ldr	w1, [sp, #4]
	mov	w0, #2
	bl	expect
	ldr	w1, [sp, #8]
	mov	w0, #3
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t4, .Lfunc_end0-t4
                                        // -- End function
	.type	.L__const.t4.a,@object          // @__const.t4.a
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t4.a:
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.size	.L__const.t4.a, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect