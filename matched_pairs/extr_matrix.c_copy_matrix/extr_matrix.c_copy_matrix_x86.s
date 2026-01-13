	.text
	.globl	copy_matrix                     # -- Begin function copy_matrix
	.p2align	4, 0x90
copy_matrix:                            # @copy_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, (%rdi)
	movl	4(%rax), %eax
	movl	%eax, 4(%rdi)
	movl	(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 8(%rdi)
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdx
	movslq	-4(%rbp), %rsi
	movq	%rdi, (%rdx,%rsi,8)
	movl	4(%rax), %edi
	movq	8(%rcx), %rcx
	movslq	-4(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	8(%rax), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_cpu