	.text
	.globl	load_labels_paths               # -- Begin function load_labels_paths
	.p2align	4, 0x90
load_labels_paths:                      # @load_labels_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	-20(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	make_matrix@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-20(%rbp), %ecx
	movb	%al, -53(%rbp)                  # 1-byte Spill
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -32(%rbp)
	setne	%al
	movb	%al, -53(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-53(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	callq	fill_truth@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	fill_hierarchy@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym fill_truth
	.addrsig_sym fill_hierarchy