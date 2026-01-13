	.text
	.p2align	2                               // -- Begin function t5
	.type	t5,@function
t5:                                     // @t5
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t5.s
	add	x8, x8, :lo12:.L__const.t5.s
	ldr	w8, [x8]
	stur	w8, [x29, #-4]
	mov	w8, #65
	sturb	w8, [x29, #-4]
	ldurb	w1, [x29, #-4]
	mov	w0, #65
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t5, .Lfunc_end0-t5
                                        // -- End function
	.type	.L__const.t5.s,@object          // @__const.t5.s
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.t5.s:
	.asciz	"xyz"
	.size	.L__const.t5.s, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect