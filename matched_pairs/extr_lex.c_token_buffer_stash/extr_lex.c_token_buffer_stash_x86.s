	.text
	.globl	token_buffer_stash              # -- Begin function token_buffer_stash
	.p2align	4, 0x90
token_buffer_stash:                     # @token_buffer_stash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	buffers(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	vec_push@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	buffers
	.p2align	2
buffers:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym buffers