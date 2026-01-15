	.text
	.globl	forward_normalization_layer     # -- Begin function forward_normalization_layer
	.p2align	4, 0x90
forward_normalization_layer:            # @forward_normalization_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	imull	-28(%rbp), %edi
	imull	12(%rax), %edi
	movq	16(%rax), %rdx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	scal_cpu@PLT
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rcx
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	imull	-28(%rbp), %edx
	imull	-16(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	imull	-28(%rbp), %edi
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %r8
	movl	$2, %esi
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	pow_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	movl	52(%rax), %esi
	movq	-48(%rbp), %rdx
	movl	$1, %ecx
	callq	const_cpu@PLT
	movl	$0, -12(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)                 # 4-byte Spill
	movl	32(%rax), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-76(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	movl	48(%rax), %esi
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %r8
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -12(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	-48(%rbp), %rcx
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-12(%rbp), %ecx
	movl	32(%rax), %eax
	subl	$1, %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	subl	%edx, %ecx
	subl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -80(%rbp)                 # 4-byte Spill
	movl	32(%rax), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-80(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -60(%rbp)
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	xorl	%esi, %esi
	subl	48(%rax), %esi
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-60(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %r8
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r8
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movl	-64(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	movl	48(%rax), %esi
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-64(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %r8
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r8
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_7
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	imull	-28(%rbp), %edi
	imull	12(%rax), %edi
	xorl	%esi, %esi
	subl	36(%rax), %esi
	movq	24(%rax), %rdx
	movq	40(%rax), %r8
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	pow_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edi
	imull	-24(%rbp), %edi
	imull	-28(%rbp), %edi
	imull	12(%rax), %edi
	movq	-8(%rbp), %rsi
	movq	40(%rax), %rcx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	mul_cpu@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scal_cpu
	.addrsig_sym pow_cpu
	.addrsig_sym const_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym copy_cpu
	.addrsig_sym mul_cpu