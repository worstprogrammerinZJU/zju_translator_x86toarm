	.text
	.globl	backward_local_layer            # -- Begin function backward_local_layer
	.p2align	4, 0x90
backward_local_layer:                   # @backward_local_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	leaq	104(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movl	(%rax), %ecx
	imull	4(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	80(%rax), %edi
	movl	8(%rax), %esi
	imull	12(%rax), %esi
	movl	76(%rax), %edx
	movq	16(%rax), %rcx
	callq	gradient_array@PLT
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-136(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	movq	16(%rax), %rdx
	movl	-28(%rbp), %ecx
	imull	8(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movl	72(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -28(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_12 Depth 2
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_18
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	-136(%rbp), %r10                # 8-byte Reload
	movq	(%rax), %rcx
	movl	-28(%rbp), %edx
	imull	24(%r10), %edx
	imull	28(%r10), %edx
	imull	32(%r10), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	32(%r10), %esi
	movl	28(%r10), %edx
	movl	24(%r10), %ecx
	movl	36(%r10), %r8d
	movl	68(%r10), %r9d
	movl	64(%r10), %r10d
	movl	16(%rax), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	im2col_cpu@PLT
	movl	$0, -32(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	16(%rcx), %rdx
	movl	-28(%rbp), %esi
	imull	8(%rcx), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movl	16(%rax), %eax
	addl	-32(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	40(%rcx), %rax
	movl	-32(%rbp), %edx
	imull	36(%rcx), %edx
	imull	36(%rcx), %edx
	imull	32(%rcx), %edx
	imull	48(%rcx), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	48(%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	36(%rcx), %eax
	imull	36(%rcx), %eax
	imull	32(%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	$1, -84(%rbp)
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movq	-56(%rbp), %r15
	movl	-36(%rbp), %r14d
	movq	-64(%rbp), %rbx
	movl	-36(%rbp), %r11d
	movq	-72(%rbp), %r10
	movl	-80(%rbp), %eax
	xorl	%edi, %edi
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 8(%rax)
	je	.LBB0_16
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -32(%rbp)
.LBB0_12:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	56(%rax), %rdx
	movl	-32(%rbp), %esi
	imull	36(%rax), %esi
	imull	36(%rax), %esi
	imull	32(%rax), %esi
	imull	48(%rax), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -96(%rbp)
	movq	16(%rax), %rdx
	movl	-28(%rbp), %esi
	imull	8(%rax), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -104(%rbp)
	movl	16(%rcx), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -112(%rbp)
	movl	36(%rax), %ecx
	imull	36(%rax), %ecx
	imull	32(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movl	$1, -120(%rbp)
	movl	48(%rax), %eax
	movl	%eax, -124(%rbp)
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movq	-96(%rbp), %r15
	movl	-116(%rbp), %r14d
	movq	-104(%rbp), %rbx
	movl	-36(%rbp), %r11d
	movq	-112(%rbp), %r10
	movl	-36(%rbp), %eax
	movl	$1, %r9d
	xorl	%esi, %esi
	movl	%r9d, %edi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_12
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %rbx                # 8-byte Reload
	movq	-144(%rbp), %rax                # 8-byte Reload
	movl	16(%rax), %edi
	movl	32(%rbx), %esi
	movl	28(%rbx), %edx
	movl	24(%rbx), %ecx
	movl	36(%rbx), %r8d
	movl	68(%rbx), %r9d
	movl	64(%rbx), %r10d
	movq	8(%rax), %rax
	movl	-28(%rbp), %r11d
	imull	32(%rbx), %r11d
	imull	28(%rbx), %r11d
	imull	24(%rbx), %r11d
	movslq	%r11d, %r11
	addq	%r11, %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	col2im_cpu@PLT
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_5
.LBB0_18:
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym axpy_cpu
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym col2im_cpu