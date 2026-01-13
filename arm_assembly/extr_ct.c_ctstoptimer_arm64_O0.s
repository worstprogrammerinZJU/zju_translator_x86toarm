	.text
	.globl	ctstoptimer                     // -- Begin function ctstoptimer
	.p2align	2
	.type	ctstoptimer,@function
ctstoptimer:                            // @ctstoptimer
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, btiming
	ldr	x8, [x8, :lo12:btiming]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	nstime
	adrp	x8, bstart
	ldr	x8, [x8, :lo12:bstart]
	subs	x10, x0, x8
	adrp	x9, bdur
	ldrsw	x8, [x9, :lo12:bdur]
	add	x8, x8, x10
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, :lo12:bdur]
	adrp	x8, btiming
	str	xzr, [x8, :lo12:btiming]
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	ctstoptimer, .Lfunc_end0-ctstoptimer
                                        // -- End function
	.type	btiming,@object                 // @btiming
	.bss
	.globl	btiming
	.p2align	3
btiming:
	.xword	0                               // 0x0
	.size	btiming, 8
	.type	bstart,@object                  // @bstart
	.globl	bstart
	.p2align	3
bstart:
	.xword	0                               // 0x0
	.size	bstart, 8
	.type	bdur,@object                    // @bdur
	.globl	bdur
	.p2align	2
bdur:
	.word	0                               // 0x0
	.size	bdur, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym btiming
	.addrsig_sym bstart
	.addrsig_sym bdur