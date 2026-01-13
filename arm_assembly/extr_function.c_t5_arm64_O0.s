	.text
	.p2align	2                               // -- Begin function t5
	.type	t5,@function
t5:                                     // @t5
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, .L__const.t5.a
	add	x8, x8, :lo12:.L__const.t5.a
	ldr	x9, [x8]
	add	x0, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	str	x9, [sp, #16]
	ldr	w8, [x8, #8]
	str	w8, [sp, #24]
	mov	x8, x0
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #99
	str	w8, [x9]
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #98
	str	w8, [x9]
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #97
	str	w8, [x9]
	bl	t5a
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	t5b
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
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.size	.L__const.t5.a, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym t5a
	.addrsig_sym t5b