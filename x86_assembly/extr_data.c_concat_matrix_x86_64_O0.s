	.text
	.globl	concat_matrix                   # -- Begin function concat_matrix
	.p2align	4, 0x90
concat_matrix:                          # @concat_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	leaq	40(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movl	$0, -8(%rbp)
	movl	16(%rcx), %edx
	movl	%edx, 16(%rdi)
	movl	(%rcx), %edx
	addl	(%rax), %edx
	movl	%edx, (%rdi)
	movl	(%rcx), %edi
	addl	(%rax), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 8(%rdi)
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	8(%rax), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -8(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -4(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	8(%rax), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -8(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc