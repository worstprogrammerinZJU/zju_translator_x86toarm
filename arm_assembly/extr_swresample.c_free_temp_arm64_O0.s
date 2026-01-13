	.text
	.p2align	2                               // -- Begin function free_temp
	.type	free_temp,@function
free_temp:                              // @free_temp
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	av_free
	ldr	x0, [sp, #8]
	mov	w1, wzr
	mov	w2, #4
	bl	memset
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	free_temp, .Lfunc_end0-free_temp
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_temp
	.addrsig_sym av_free
	.addrsig_sym memset