	.text
	.globl	ctresettimer                    // -- Begin function ctresettimer
	.p2align	2
	.type	ctresettimer,@function
ctresettimer:                           // @ctresettimer
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, bdur
	str	xzr, [x8, :lo12:bdur]
	bl	nstime
	adrp	x8, bstart
	str	w0, [x8, :lo12:bstart]
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	ctresettimer, .Lfunc_end0-ctresettimer
                                        // -- End function
	.type	bdur,@object                    // @bdur
	.bss
	.globl	bdur
	.p2align	3
bdur:
	.xword	0                               // 0x0
	.size	bdur, 8
	.type	bstart,@object                  // @bstart
	.globl	bstart
	.p2align	2
bstart:
	.word	0                               // 0x0
	.size	bstart, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym bdur
	.addrsig_sym bstart