	.text
	.p2align	2                               // -- Begin function t4
	.type	t4,@function
t4:                                     // @t4
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.t4.s
	add	x8, x8, :lo12:.L__const.t4.s
	ldr	w9, [x8]
	sub	x8, x29, #4
	stur	w9, [x29, #-4]
	add	x8, x8, #2
	str	x8, [sp]
	ldr	x8, [sp]
	ldrb	w1, [x8]
	mov	w0, #122
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t4, .Lfunc_end0-t4
                                        // -- End function
	.type	.L__const.t4.s,@object          // @__const.t4.s
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.t4.s:
	.asciz	"xyz"
	.size	.L__const.t4.s, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect