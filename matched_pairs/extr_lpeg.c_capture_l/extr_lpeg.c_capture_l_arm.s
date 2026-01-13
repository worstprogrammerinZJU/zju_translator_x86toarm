	.text
	.p2align	2                               // -- Begin function capture_l
	.type	capture_l,@function
capture_l:                              // @capture_l
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, Csimple
	ldr	w1, [x8, :lo12:Csimple]
	mov	w2, wzr
	bl	capture_aux
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	capture_l, .Lfunc_end0-capture_l
                                        // -- End function
	.type	Csimple,@object                 // @Csimple
	.bss
	.globl	Csimple
	.p2align	2
Csimple:
	.word	0                               // 0x0
	.size	Csimple, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capture_l
	.addrsig_sym capture_aux
	.addrsig_sym Csimple