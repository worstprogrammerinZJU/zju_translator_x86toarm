	.text
	.p2align	2                               // -- Begin function capsubst_l
	.type	capsubst_l,@function
capsubst_l:                             // @capsubst_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, Csubst
	ldr	w1, [x8, :lo12:Csubst]
	mov	w2, wzr
	bl	capture_aux
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	capsubst_l, .Lfunc_end0-capsubst_l
                                        // -- End function
	.type	Csubst,@object                  // @Csubst
	.bss
	.globl	Csubst
	.p2align	2
Csubst:
	.word	0                               // 0x0
	.size	Csubst, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capsubst_l
	.addrsig_sym capture_aux
	.addrsig_sym Csubst