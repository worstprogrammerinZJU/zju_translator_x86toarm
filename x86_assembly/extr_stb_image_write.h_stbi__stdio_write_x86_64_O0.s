	.text
	.p2align	4, 0x90                         # -- Begin function stbi__stdio_write
stbi__stdio_write:                      # @stbi__stdio_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	$1, %esi
	callq	fwrite@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__stdio_write
	.addrsig_sym fwrite