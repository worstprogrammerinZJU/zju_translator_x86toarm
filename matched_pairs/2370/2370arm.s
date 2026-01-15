	.text
	.globl	swresample_configuration        // -- Begin function swresample_configuration
	.p2align	2
	.type	swresample_configuration,@function
swresample_configuration:               // @swresample_configuration
// %bb.0:
	adrp	x8, FFMPEG_CONFIGURATION
	ldr	x0, [x8, :lo12:FFMPEG_CONFIGURATION]
	ret
.Lfunc_end0:
	.size	swresample_configuration, .Lfunc_end0-swresample_configuration
                                        // -- End function
	.type	FFMPEG_CONFIGURATION,@object    // @FFMPEG_CONFIGURATION
	.bss
	.globl	FFMPEG_CONFIGURATION
	.p2align	3
FFMPEG_CONFIGURATION:
	.xword	0
	.size	FFMPEG_CONFIGURATION, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym FFMPEG_CONFIGURATION