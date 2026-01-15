	.text
	.p2align	2                               // -- Begin function clear_context
	.type	clear_context,@function
clear_context:                          // @clear_context
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #88]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #80]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #72]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #64]
	mov	w1, wzr
	str	w1, [sp]                        // 4-byte Folded Spill
	mov	w2, #4
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	bl	memset
	ldr	w1, [sp]                        // 4-byte Folded Reload
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #60]
	bl	memset
	ldr	x8, [sp, #8]
	add	x0, x8, #56
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #52
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #48
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #44
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #40
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #36
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #32
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #28
	bl	free_temp
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	swri_audio_convert_free
	ldr	x8, [sp, #8]
	add	x0, x8, #20
	bl	swri_audio_convert_free
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	swri_audio_convert_free
	ldr	x0, [sp, #8]
	bl	swri_rematrix_free
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	clear_context, .Lfunc_end0-clear_context
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clear_context
	.addrsig_sym memset
	.addrsig_sym free_temp
	.addrsig_sym swri_audio_convert_free
	.addrsig_sym swri_rematrix_free