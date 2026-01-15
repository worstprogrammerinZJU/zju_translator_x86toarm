	.text
	.p2align	4, 0x90                         # -- Begin function stbi__refill_buffer
stbi__refill_buffer:                    # @stbi__refill_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	callq	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, (%rax)
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__refill_buffer