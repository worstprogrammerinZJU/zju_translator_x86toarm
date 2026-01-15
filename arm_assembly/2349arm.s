	.text
	.p2align	2                               // -- Begin function incomplete
	.type	incomplete,@function
incomplete:                             // @incomplete
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.incomplete.v1
	ldr	w9, [x8, :lo12:.L__const.incomplete.v1]
	sub	x8, x29, #4
	stur	w9, [x29, #-4]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	w1, [x8]
	mov	w0, #3
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	incomplete, .Lfunc_end0-incomplete
                                        // -- End function
	.type	.L__const.incomplete.v1,@object // @__const.incomplete.v1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.incomplete.v1:
	.word	3                               // 0x3
	.size	.L__const.incomplete.v1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym incomplete
	.addrsig_sym expect