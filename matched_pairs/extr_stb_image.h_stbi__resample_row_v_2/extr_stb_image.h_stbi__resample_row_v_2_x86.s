	.text
	.p2align	4, 0x90                         # -- Begin function stbi__resample_row_v_2
stbi__resample_row_v_2:                 # @stbi__resample_row_v_2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %edi
	callq	STBI_NOTUSED@PLT
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imull	$3, (%rax,%rcx,4), %edi
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addl	(%rax,%rcx,4), %edi
	addl	$2, %edi
	callq	stbi__div4@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__resample_row_v_2
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__div4