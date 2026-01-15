	.text
	.globl	threshold_image                 # -- Begin function threshold_image
	.p2align	4, 0x90
threshold_image:                        # @threshold_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movss	%xmm0, -4(%rbp)
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	callq	make_image@PLT
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	imull	8(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movq	16(%rcx), %rcx
	movslq	-8(%rbp), %rdx
	cvtsi2ssl	(%rcx,%rdx,4), %xmm0
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	xorl	%edx, %edx
	movl	$1, %ecx
	ucomiss	%xmm1, %xmm0
	cmoval	%ecx, %edx
	movq	16(%rax), %rax
	movslq	-8(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image