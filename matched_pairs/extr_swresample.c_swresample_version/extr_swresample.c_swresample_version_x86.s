	.text
	.globl	swresample_version              # -- Begin function swresample_version
	.p2align	4, 0x90
swresample_version:                     # @swresample_version
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$100, LIBSWRESAMPLE_VERSION_MICRO(%rip)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movl	LIBSWRESAMPLE_VERSION_INT(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LIBSWRESAMPLE_VERSION_MICRO
	.p2align	2
LIBSWRESAMPLE_VERSION_MICRO:
	.long	0                               # 0x0
	.globl	LIBSWRESAMPLE_VERSION_INT
	.p2align	2
LIBSWRESAMPLE_VERSION_INT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_assert0
	.addrsig_sym LIBSWRESAMPLE_VERSION_MICRO
	.addrsig_sym LIBSWRESAMPLE_VERSION_INT