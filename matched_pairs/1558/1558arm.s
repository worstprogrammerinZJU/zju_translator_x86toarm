	.text
	.p2align	2                               // -- Begin function capaccum_l
	.type	capaccum_l,@function
capaccum_l:                             // @capaccum_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, Caccum
	ldr	w1, [x8, :lo12:Caccum]
	mov	w2, wzr
	bl	capture_aux
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	capaccum_l, .Lfunc_end0-capaccum_l
                                        // -- End function
	.type	Caccum,@object                  // @Caccum
	.bss
	.globl	Caccum
	.p2align	2
Caccum:
	.word	0                               // 0x0
	.size	Caccum, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capaccum_l
	.addrsig_sym capture_aux
	.addrsig_sym Caccum