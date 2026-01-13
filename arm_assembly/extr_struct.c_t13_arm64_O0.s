	.text
	.p2align	2                               // -- Begin function t13
	.type	t13,@function
t13:                                    // @t13
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t13.v
	ldrb	w8, [x8, :lo12:.L__const.t13.v]
	sturb	w8, [x29, #-1]
	ldurb	w1, [x29, #-1]
	mov	w0, #97
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t13, .Lfunc_end0-t13
                                        // -- End function
	.type	.L__const.t13.v,@object         // @__const.t13.v
	.section	.rodata,"a",@progbits
.L__const.t13.v:
	.byte	97                              // 0x61
	.size	.L__const.t13.v, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t13
	.addrsig_sym expect