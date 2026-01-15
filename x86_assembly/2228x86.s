	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_finish
stbi__jpeg_finish:                      # @stbi__jpeg_finish
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_14
# %bb.1:
	movl	$0, -20(%rbp)
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -16(%rbp)
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$0, -12(%rbp)
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movslq	-20(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	imull	16(%rsi), %edx
	addl	%edx, %ecx
	shll	$6, %ecx
	movslq	%ecx, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	24(%rcx), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	stbi__jpeg_dequantize@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movl	36(%rcx), %edi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movl	32(%rcx), %ecx
	imull	-16(%rbp), %ecx
	shll	$3, %ecx
	addl	%ecx, %edi
	movl	-12(%rbp), %ecx
	shll	$3, %ecx
	addl	%ecx, %edi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movl	32(%rcx), %esi
	movq	-40(%rbp), %rdx
	callq	*%rax
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_4
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_2
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_finish
	.addrsig_sym stbi__jpeg_dequantize