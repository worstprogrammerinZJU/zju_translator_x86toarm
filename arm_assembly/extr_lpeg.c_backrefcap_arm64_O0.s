	.text
	.p2align	2                               // -- Begin function backrefcap
	.type	backrefcap,@function
backrefcap:                             // @backrefcap
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldur	w2, [x29, #-12]
	bl	findback
	str	x0, [sp]
	ldr	x8, [sp]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	bl	pushcapture
	stur	w0, [x29, #-12]
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backrefcap, .Lfunc_end0-backrefcap
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backrefcap
	.addrsig_sym findback
	.addrsig_sym pushcapture