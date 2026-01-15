	.text
	.p2align	4, 0x90                         # -- Begin function stbi__gif_info_raw
stbi__gif_info_raw:                     # @stbi__gif_info_raw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$8, %edi
	callq	stbi__malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	$1, %ecx
	callq	stbi__gif_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-48(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_6:
	movq	-48(%rbp), %rdi
	callq	STBI_FREE@PLT
	movl	$1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_info_raw
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__gif_header
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__rewind