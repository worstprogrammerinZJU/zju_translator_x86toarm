	.text
	.globl	ms_clear                        // -- Begin function ms_clear
	.p2align	2
	.type	ms_clear,@function
ms_clear:                               // @ms_clear
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #8]
	mov	w1, wzr
	bl	ms_delete
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	free
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w2, [x8]
	bl	ms_init
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ms_clear, .Lfunc_end0-ms_clear
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ms_delete
	.addrsig_sym free
	.addrsig_sym ms_init