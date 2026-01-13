	.text
	.p2align	4, 0x90                         # -- Begin function stbi__gif_load
stbi__gif_load:                         # @stbi__gif_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	leaq	-72(%rbp), %rsi
	xorl	%r8d, %r8d
	callq	stbi__gif_load_next@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -56(%rbp)
.LBB0_2:
	cmpq	$0, -56(%rbp)
	je	.LBB0_7
# %bb.3:
	movl	-72(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-68(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	cmpl	$0, -36(%rbp)
	je	.LBB0_6
# %bb.4:
	cmpl	$4, -36(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	$4, %esi
	callq	stbi__convert_format@PLT
	movq	%rax, -56(%rbp)
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	-60(%rbp), %edi
	callq	STBI_FREE@PLT
	movl	-64(%rbp), %edi
	callq	STBI_FREE@PLT
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_load
	.addrsig_sym memset
	.addrsig_sym stbi__gif_load_next
	.addrsig_sym stbi__convert_format
	.addrsig_sym STBI_FREE