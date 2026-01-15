	.text
	.globl	swresample_configuration        # -- Begin function swresample_configuration
	.p2align	4, 0x90
swresample_configuration:               # @swresample_configuration
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	FFMPEG_CONFIGURATION(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FFMPEG_CONFIGURATION
	.p2align	3
FFMPEG_CONFIGURATION:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym FFMPEG_CONFIGURATION