	.text
	.globl	select_data                     # -- Begin function select_data
	.p2align	4, 0x90
select_data:                            # @select_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	$1, (%rdi)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, 60(%rdi)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, 56(%rdi)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, 32(%rdi)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, 8(%rdi)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, 48(%rdi)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, 24(%rdi)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	32(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rcx
	movq	40(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movq	40(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc