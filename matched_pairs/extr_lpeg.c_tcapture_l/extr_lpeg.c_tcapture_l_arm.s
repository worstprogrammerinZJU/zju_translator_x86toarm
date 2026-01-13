	.text
	.p2align	2                               // -- Begin function tcapture_l
	.type	tcapture_l,@function
tcapture_l:                             // @tcapture_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, Ctable
	ldr	w1, [x8, :lo12:Ctable]
	mov	w2, wzr
	bl	capture_aux
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tcapture_l, .Lfunc_end0-tcapture_l
                                        // -- End function
	.type	Ctable,@object                  // @Ctable
	.bss
	.globl	Ctable
	.p2align	2
Ctable:
	.word	0                               // 0x0
	.size	Ctable, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tcapture_l
	.addrsig_sym capture_aux
	.addrsig_sym Ctable