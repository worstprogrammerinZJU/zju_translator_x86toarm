	.text
	.p2align	2                               // -- Begin function t3
	.type	t3,@function
t3:                                     // @t3
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t3.a
	ldr	w9, [x8, :lo12:.L__const.t3.a]
	sub	x8, x29, #4
	stur	w9, [x29, #-4]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	w1, [x8]
	mov	w0, #55
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t3, .Lfunc_end0-t3
                                        // -- End function
	.type	.L__const.t3.a,@object          // @__const.t3.a
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.t3.a:
	.word	55                              // 0x37
	.size	.L__const.t3.a, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect