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
	add	x8, sp, #8
	str	x9, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	w1, [x8]
	mov	w0, #67
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t4, .Lfunc_end0-t4
                                        // -- End function
	.type	.L__const.t4.a,@object          // @__const.t4.a
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.t4.a:
	.word	55                              // 0x37
	.word	67                              // 0x43
	.size	.L__const.t4.a, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect