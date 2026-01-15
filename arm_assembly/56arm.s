	.text
	.globl	swri_audio_convert_free         // -- Begin function swri_audio_convert_free
	.p2align	2
	.type	swri_audio_convert_free,@function
swri_audio_convert_free:                // @swri_audio_convert_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	av_freep
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	swri_audio_convert_free, .Lfunc_end0-swri_audio_convert_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_freep