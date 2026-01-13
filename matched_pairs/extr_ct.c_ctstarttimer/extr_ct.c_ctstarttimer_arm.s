	.text
	.globl	ctstarttimer                    // -- Begin function ctstarttimer
	.p2align	2
	.type	ctstarttimer,@function
ctstarttimer:                           // @ctstarttimer
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, btiming
	ldr	w8, [x8, :lo12:btiming]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	nstime
	adrp	x8, bstart
	str	w0, [x8, :lo12:bstart]
	mov	w8, #1
	adrp	x9, btiming
	str	w8, [x9, :lo12:btiming]
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	ctstarttimer, .Lfunc_end0-ctstarttimer
                                        // -- End function
	.type	btiming,@object                 // @btiming
	.bss
	.globl	btiming
	.p2align	2
btiming:
	.word	0                               // 0x0
	.size	btiming, 4
	.type	bstart,@object                  // @bstart
	.globl	bstart
	.p2align	2
bstart:
	.word	0                               // 0x0
	.size	bstart, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym btiming
	.addrsig_sym bstart