	.text
	.p2align	2                               // -- Begin function resample_free
	.type	resample_free,@function
resample_free:                          // @resample_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp]
	bl	av_freep
	ldr	x0, [sp, #8]
	bl	av_freep
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	resample_free, .Lfunc_end0-resample_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_free
	.addrsig_sym av_freep