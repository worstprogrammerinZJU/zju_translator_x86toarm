	.text
	.p2align	4, 0x90                         # -- Begin function stbi__resample_row_hv_2
stbi__resample_row_hv_2:                # @stbi__resample_row_hv_2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	imull	$3, (%rax), %edi
	movq	-32(%rbp), %rax
	addl	(%rax), %edi
	addl	$2, %edi
	callq	stbi__div4@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-24(%rbp), %rax
	imull	$3, (%rax), %eax
	movq	-32(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	addl	$2, %edi
	callq	stbi__div4@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -44(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imull	$3, (%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -52(%rbp)
	imull	$3, -48(%rbp), %edi
	addl	-52(%rbp), %edi
	addl	$8, %edi
	callq	stbi__div16@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	imull	$3, -52(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$8, %edi
	callq	stbi__div16@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movl	-52(%rbp), %edi
	addl	$2, %edi
	callq	stbi__div4@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-40(%rbp), %edi
	callq	STBI_NOTUSED@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__resample_row_hv_2
	.addrsig_sym stbi__div4
	.addrsig_sym stbi__div16
	.addrsig_sym STBI_NOTUSED