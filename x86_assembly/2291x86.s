	.text
	.p2align	4, 0x90                         # -- Begin function stbi__start_file
stbi__start_file:                       # @stbi__start_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	stbi__stdio_callbacks(%rip), %rsi
	callq	stbi__start_callbacks@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__stdio_callbacks
	.p2align	2
stbi__stdio_callbacks:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_file
	.addrsig_sym stbi__start_callbacks
	.addrsig_sym stbi__stdio_callbacks