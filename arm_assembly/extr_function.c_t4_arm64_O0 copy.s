	.text
	.p2align	2                               // -- Begin function t4
	.type	t4,@function
t4:                                     // @t4
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t4.a
	ldr	w8, [x8, :lo12:.L__const.t4.a]
	sub	x0, x29, #4
	stur	w8, [x29, #-4]
	bl	t4a
	mov	w1, w0
	mov	w0, #98
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t4, .Lfunc_end0-t4
                                        // -- End function
	.type	.L__const.t4.a,@object          // @__const.t4.a
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.t4.a:
	.word	98                              // 0x62
	.size	.L__const.t4.a, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect
	.addrsig_sym t4a