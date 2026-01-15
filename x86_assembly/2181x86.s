	.text
	.p2align	4, 0x90                         # -- Begin function stbi__compute_transparency16
stbi__compute_transparency16:           # @stbi__compute_transparency16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	imulq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movb	$1, %al
	cmpl	$2, -20(%rbp)
	movb	%al, -57(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	cmpl	$4, -20(%rbp)
	sete	%al
	movb	%al, -57(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-57(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	cmpl	$2, -20(%rbp)
	jne	.LBB0_8
# %bb.3:
	movq	$0, -40(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	$65535, %ecx                    # imm = 0xFFFF
	xorl	%eax, %eax
	cmpl	%esi, %edx
	cmovel	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_4
.LBB0_7:
	jmp	.LBB0_17
.LBB0_8:
	movq	$0, -40(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB0_16
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	movl	$0, 12(%rax)
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_9
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__compute_transparency16
	.addrsig_sym STBI_ASSERT