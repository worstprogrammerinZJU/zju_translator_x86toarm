	.text
	.globl	resize_data                     # -- Begin function resize_data
	.p2align	4, 0x90
resize_data:                            # @resize_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	$0, 32(%rdi)
	movl	-4(%rbp), %ecx
	movl	%ecx, (%rdi)
	movl	-8(%rbp), %ecx
	movl	%ecx, 4(%rdi)
	movl	8(%rax), %eax
	movl	%eax, 8(%rdi)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, 12(%rdi)
	movl	8(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 16(%rdi)
	movl	24(%rax), %edi
	callq	copy_matrix@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, 24(%rdi)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %edi
	movl	4(%rax), %esi
	movq	16(%rax), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movl	$3, %edx
	callq	float_to_image@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	resize_image@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	16(%rax), %rax
	movslq	-12(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_matrix
	.addrsig_sym float_to_image
	.addrsig_sym resize_image