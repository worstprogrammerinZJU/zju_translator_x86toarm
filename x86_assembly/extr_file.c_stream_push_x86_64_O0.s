	.text
	.globl	stream_push                     # -- Begin function stream_push
	.p2align	4, 0x90
stream_push:                            # @stream_push
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	files(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	vec_push@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym files